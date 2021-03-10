package ${rootPackage}.common.domain;

/**
 * 返回代码与错误信息
 *
 * @author ${author}
 */
public enum ResultConstant {

    /**
     * 用户端错误
     */
    USER_ERROR(10001, "用户端错误(一级宏观错误码)"),
    USER_REGISTRATION_ERROR(10100, "用户注册错误(二级宏观错误码)"),
    E10101(10101, "用户未同意隐私协议"),
    E10102(10102, "注册国家或地区受限"),
    E10110(10110, "用户名校验失败"),
    E10111(10111, "用户名已存在"),
    E10112(10112, "用户名包含敏感词"),
    E10113(10113, "用户名包含特殊字符"),
    LOGIN_NAME_EMPTY_ERROR(10114, "用户登录名不能为空"),

    E10120(10120, "密码校验失败"),
    E10121(10121, "密码长度不够"),
    E10122(10122, "密码强度不够"),
    PASSWORD_EMPTY_ERROR(10123, "密码不能为空"),

    E10130(10130, "校验码输入错误"),
    E10131(10131, "短信校验码输入错误"),
    E10132(10132, "邮件校验码输入错误"),
    E10133(10133, "语音校验码输入错误"),
    E10140(10140, "用户证件异常"),
    E10141(10141, "用户证件类型未选择"),
    E10142(10142, "大陆身份证编号校验非法"),
    E10143(10143, "护照编号校验非法"),
    E10144(10144, "军官证编号校验非法"),
    E10150(10150, "用户基本信息校验失败"),
    MOBILE_FORMAL_ERROR(10151, "手机格式校验失败"),
    ADDRESS_FORMAL_ERROR(10152, "地址格式校验失败"),
    EMAIL_FORMAL_ERROR(10153, "邮箱格式校验失败"),

    USER_LOGIN_ERROR(10200, "用户登陆异常(二级宏观错误码)"),
    USERNAME_INVALID_ERROR(10201, "用户账户不存在"),
    E10202(10202, "用户账户被冻结"),
    E10203(10203, "用户账户已作废"),

    USER_PASSWORD_ERROR(10210, "用户密码错误"),
    E10211(10211, "用户输入密码次数超限"),

    E10220(10220, "用户身份校验失败"),
    E10221(10221, "用户指纹识别失败"),
    E10222(10222, "用户面容识别失败"),
    E10223(10223, "用户未获得第三方登陆授权"),
    E10230(10230, "用户登陆已过期"),
    INVALID_LOGIN(10231, "用户未登陆"),
    USER_VERIFICATION_CODE_ERROR(10240, "用户验证码错误"),
    E10241(10241, "用户验证码尝试次数超限"),

    E10300(10300, "访问权限异常(二级宏观错误码)"),
    PERMISSION_DENIED(10301, "访问未授权"),
    E10302(10302, "正在授权中"),
    E10303(10303, "用户授权申请被拒绝"),
    E10310(10310, "因访问对象隐私设置被拦截"),
    E10311(10311, "授权已过期"),
    E10312(10312, "无权限使用API"),
    E10320(10320, "用户访问被拦截"),
    E10321(10321, "黑名单用户"),
    E10322(10322, "账号被冻结"),
    E10323(10323, "非法IP地址"),
    E10324(10324, "网关访问受限"),
    E10325(10325, "地域黑名单"),
    E10330(10330, "服务已欠费"),
    E10340(10340, "用户签名异常"),
    E10341(10341, "RSA签名错误"),

    /**
     * 参数错误
     */
    E10400(10400, "用户请求参数错误(二级宏观错误码)"),
    E10401(10401, "包含非法恶意跳转链接"),
    INVALID_USER_INPUT(10402, "无效的用户输入"),
    NOT_FOUND(10404, "资源不存在"),
    PARAM_EMPTY_ERROR(10410, "请求必填参数为空"),
    E10411(10411, "用户订单号为空"),
    E10412(10412, "订购数量为空"),
    E10413(10413, "缺少时间戳参数"),
    E10414(10414, "非法的时间戳参数"),
    URL_FORMAL_ERROR(10415, "无效的URL"),

    OVER_RANGE_ERROR(10420, "请求参数值超出允许的范围"),
    PARAM_FORMAL_ERROR(10421, "参数格式不匹配"),
    E10422(10422, "地址不在服务范围"),
    E10423(10423, "时间不在服务范围"),
    E10424(10424, "金额超出限制"),
    RANGE_ERROR(10425, "数量超出限制"),
    E10426(10426, "请求批量处理总个数超出限制"),
    E10427(10427, "请求JSON解析失败"),
    E10430(10430, "用户输入内容非法"),
    E10431(10431, "包含违禁敏感词"),
    E10432(10432, "图片包含违禁信息"),
    E10433(10433, "文件侵犯版权"),
    USER_OPERATION_EXCEPTION(10440, "用户操作异常"),
    E10441(10441, "用户支付超时"),
    E10442(10442, "确认订单超时"),
    E10443(10443, "订单已关闭"),

    E10500(10500, "用户请求服务异常(二级宏观错误码)"),
    E10501(10501, "请求次数超出限制"),
    E10502(10502, "请求并发数超出限制"),
    E10503(10503, "用户操作请等待"),
    E10504(10504, "WebSocket连接异常"),
    E10505(10505, "WebSocket连接断开"),
    REPEAT_REQUEST_ERROR(10506, "用户重复请求"),

    E10600(10600, "用户资源异常(二级宏观错误码)"),
    E10601(10601, "账户余额不足"),
    E10602(10602, "用户磁盘空间不足"),
    E10603(10603, "用户内存空间不足"),
    E10604(10604, "用户OSS容量不足"),
    E10605(10605, "用户配额已用光"),
    /**
     * 用户上传文件异常(二级宏观错误码)
     * Upload file exception
     */
    UPLOAD_FILE_ERROR(10700, "用户上传文件异常"),
    /**
     * 用户上传文件类型不匹配
     * File types do not match
     */
    UPLOAD_FILE_TYPE_NOT_MATCH(10701, "用户上传文件类型不匹配"),
    UPLOAD_FILE_TOO_BIG_ERROR(10702, "用户上传文件太大"),
    UPLOAD_PICTURE_TOO_BIG_ERROR(10703, "用户上传图片太大"),
    UPLOAD_VIDEO_TOO_BIG_ERROR(10704, "用户上传视频太大"),
    UPLOAD_COMPRESSED_FILE_TOO_BIG_ERROR(10705, "用户上传压缩文件太大"),

    E10800(10800, "用户当前版本异常(二级宏观错误码)"),
    E10801(10801, "用户安装版本与系统不匹配"),
    E10802(10802, "用户安装版本过低"),
    E10803(10803, "用户安装版本过高"),
    E10804(10804, "用户安装版本已过期"),
    E10805(10805, "用户API请求版本不匹配"),
    E10806(10806, "用户API请求版本过高"),
    E10807(10807, "用户API请求版本过低"),

    E10900(10900, "用户隐私未授权(二级宏观错误码)"),
    E10901(10901, "用户隐私未签署"),
    E10902(10902, "用户摄像头未授权"),
    E10903(10903, "用户相机未授权"),
    E10904(10904, "用户图片库未授权"),
    E10905(10905, "用户文件未授权"),
    E10906(10906, "用户位置信息未授权"),
    E10907(10907, "用户通讯录未授权"),

    E11000(11000, "用户设备异常(二级宏观错误码)"),
    E11001(11001, "用户相机异常"),
    E11002(11002, "用户麦克风异常"),
    E11003(11003, "用户听筒异常"),
    E11004(11004, "用户扬声器异常"),
    E11005(11005, "用户GPS定位异常"),

    /**
     * 系统执行出错(一级宏观错误码)
     */
    E20001(20001, "系统执行出错"),
    REQUEST_TYPE_ERROR(20002, "请求类型错误"),
    PARAMETER_CONVERSION_ERROR(20003, "数据格式转换错误"),

    E20100(20100, "系统执行超时(二级宏观错误码)"),
    E20101(20101, "系统订单处理超时"),

    E20200(20200, "系统容灾功能被触发(二级宏观错误码)"),
    E20210(20210, "系统限流"),
    E20220(20220, "系统功能降级"),

    E20300(20300, "系统资源异常(二级宏观错误码)"),
    E20310(20310, "系统资源耗尽"),
    E20311(20311, "系统磁盘空间耗尽"),
    E20312(20312, "系统内存耗尽"),
    E20313(20313, "文件句柄耗尽"),
    E20314(20314, "系统连接池耗尽"),
    E20315(20315, "系统线程池耗尽"),
    E20320(20320, "系统资源访问异常"),
    E20321(20321, "系统读取磁盘文件失败"),

    /**
     * 调用第三方服务出错
     */
    E30001(30001, "调用第三方服务出错(一级宏观错误码)"),
    E30100(30100, "中间件服务出错(二级宏观错误码)"),
    E30110(30110, "RPC服务出错"),
    E30111(30111, "RPC服务未找到"),
    E30112(30112, "RPC服务未注册"),
    E30113(30113, "接口不存在"),
    E30120(30120, "消息服务出错"),
    E30121(30121, "消息投递出错"),
    E30122(30122, "消息消费出错"),
    E30123(30123, "消息订阅出错"),
    E30124(30124, "消息分组未查到"),
    E30130(30130, "缓存服务出错"),
    E30131(30131, "key长度超过限制"),
    E30132(30132, "value长度超过限制"),
    E30133(30133, "存储容量已满"),
    E30134(30134, "不支持的数据格式"),
    E30140(30140, "配置服务出错"),
    E30150(30150, "网络资源服务出错"),
    E30151(30151, "VPN服务出错"),
    E30152(30152, "CDN服务出错"),
    E30153(30153, "域名解析服务出错"),
    E30154(30154, "网关服务出错"),
    E30200(30200, "第三方系统执行超时(二级宏观错误码)"),
    E30210(30210, "RPC执行超时"),
    E30220(30220, "消息投递超时"),
    E30230(30230, "缓存服务超时"),
    E30240(30240, "配置服务超时"),
    E30250(30250, "数据库服务超时"),
    E30300(30300, "数据库服务出错(二级宏观错误码)"),
    E30311(30311, "表不存在"),
    E30312(30312, "列不存在"),
    E30321(30321, "多表关联中存在多个相同名称的列"),
    E30331(30331, "数据库死锁"),
    E30341(30341, "主键冲突"),
    E30400(30400, "第三方容灾系统被触发(二级宏观错误码)"),
    E30401(30401, "第三方系统限流"),
    E30402(30402, "第三方功能降级"),
    E30500(30500, "通知服务出错(二级宏观错误码)"),
    E30501(30501, "短信提醒服务失败"),
    E30502(30502, "语音提醒服务失败"),
    E30503(30503, "邮件提醒服务失败"),

    /**
     * 其他错误
     */
    FAILED(0, "FAILED"),
    /**
     * 一切ok正确执行后的返回
     */
    SUCCESS(1, "SUCCESS");

    private final int code;

    private final String message;

    ResultConstant(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
