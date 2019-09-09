package cn.afm.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.Set;

public class CharacterEncoding implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException, ServletException {
        HttpServletRequest request=(HttpServletRequest)arg0;
        HttpServletResponse response=(HttpServletResponse)arg1;
        //解决post乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        //解决get乱码
        EncodingRequest encodingRequest = new EncodingRequest(request);
        arg2.doFilter(encodingRequest, response);
    }

    @Override
    public void destroy() {

    }

    class EncodingRequest extends HttpServletRequestWrapper {
        private HttpServletRequest request;
        private boolean hasEncode = false;
        public EncodingRequest(HttpServletRequest request) {
            super(request);
            this.request = request;
        }

        @Override
        public String getParameter(String name) {
            // 通过getParameterMap方法完成
            String[] values = getParameterValues(name);
            if (values == null) {
                return null;
            }
            return values[0];
        }

        @Override
        public String[] getParameterValues(String name) {
            // 通过getParameterMap方法完成
            Map<String, String[]> parameterMap = getParameterMap();
            String[] values = parameterMap.get(name);
            return values;
        }

        @Override
        public Map getParameterMap() {
            Map<String, String[]> parameterMap = request.getParameterMap();
            String method = request.getMethod();
            if (method.equalsIgnoreCase("post")) {
                return parameterMap;
            }

            // get提交方式 手动转码 , 这里的转码只进行一次 所以通过 hasEncode 布尔类型变量控制
            if (!hasEncode) {
                Set<String> keys = parameterMap.keySet();
                for (String key : keys) {
                    String[] values = parameterMap.get(key);
                    if (values == null) {
                        continue;
                    }
                    for (int i = 0; i < values.length; i++) {
                        String value = values[i];
                        // 解决get
                        try {
                            value = new String(value.getBytes("ISO-8859-1"),
                                    "utf-8");
                            // values是一个地址
                            values[i] = value;
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                    }
                    // 一次转码完成后，设置转码状态为true
                    hasEncode = true;
                }
            }
            return parameterMap;
        }
    }
}
