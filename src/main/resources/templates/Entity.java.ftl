package ${codePackage}.entity;

import java.io.Serializable;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

<#if plusEnabled == 1>
    import com.baomidou.mybatisplus.annotation.TableId;
    import com.baomidou.mybatisplus.annotation.TableName;
    import com.baomidou.mybatisplus.annotation.TableField;
    import com.baomidou.mybatisplus.extension.activerecord.Model;
</#if>
<#if lombokDataEnabled == 1>
    import lombok.Data;
    import lombok.EqualsAndHashCode;
</#if>

/**
* ${comment}
*
* @author ${author}
* @date ${createTime?date("yyyy-MM-dd")}
*/

<#if lombokDataEnabled == 1>
    @Data
    @EqualsAndHashCode(callSuper = true)
</#if>
@ApiModel(value = "${comment}")
<#if plusEnabled == 1>
@TableName("${tableName}")
public class ${classNameUpperCase}Entity extends Model${r'<'}${classNameUpperCase}Entity>
<#else>
public class ${classNameUpperCase}Entity implements Serializable
</#if>${r'{'}

    private static final long serialVersionUID = 1L;

    <#list columns as column>
        /**
        * ${column.comment} ${column.columnDetail}
        */
        <#if plusEnabled == 1><#if column.columnName == pk.columnName>
            @TableId(value = "${column.columnName}")
        </#if>
            <#if column.columnName == 'is_deleted'>
            <#--逻辑删除标识-->
                @TableLogic
            </#if>
        </#if>
        @ApiModelProperty(value = "${column.comment}")
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