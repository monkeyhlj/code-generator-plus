package ${codePackage}.dto;

import java.io.Serializable;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import com.alibaba.fastjson.JSONObject;

<#if lombokDataEnabled == 1>
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.time.LocalDateTime;
import java.time.LocalDate;
</#if>

/**
 * ${comment}详细信息
 *
 * @author ${author}
 * @date ${createTime?date("yyyy-MM-dd")}
 */
<#if lombokDataEnabled == 1>
@Data
</#if>
@ApiModel(value = "${commentEscape}详细信息")
public class ${classNameUpperCase}DetailDTO implements Serializable${r'{'}

    private static final long serialVersionUID = 1L;
    //TODO 当您看到这个后您应该自己修改模板增减字段
<#list columns as column>
    /**
     * ${column.comment} ${column.columnDetail}
     */
    @ApiModelProperty(value = "${column.commentEscape}")
    private ${column.attrType} ${column.attrNameLowerCase};
</#list>
<#if lombokDataEnabled == 0>
    <#list columns as column>
    /**
     * 获取：${column.comment}
     *
     * @return ${column.attrNameLowerCase} ${column.comment}
     */
    public ${column.attrType} get${column.attrNameUpperCase}() {
        return ${column.attrNameLowerCase};
    }

    /**
     * 设置：${column.comment}
     *
     * @param ${column.attrNameLowerCase} ${column.comment}
     */
    public void set${column.attrNameUpperCase}(${column.attrType} ${column.attrNameLowerCase}) {
        this.${column.attrNameLowerCase} = ${column.attrNameLowerCase};
    }
    </#list>
</#if>
${r'}'}