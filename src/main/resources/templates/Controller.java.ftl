package ${codePackage}.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import ${rootPackage}.common.base.BaseController;
import ${rootPackage}.common.domain.R;
import ${rootPackage}.common.domain.ResultConstant;
import ${codePackage}.service.${classNameUpperCase}Service;
import ${codePackage}.entity.${classNameUpperCase}Entity;

<#if plusEnabled == 1>
import ${codePackage}.vo.${classNameUpperCase}PageParamVO;
import ${codePackage}.vo.${classNameUpperCase}InputVO;
    import ${codePackage}.dto.${classNameUpperCase}DetailDTO;
    import ${codePackage}.dto.${classNameUpperCase}ListDTO;
    import ${rootPackage}.common.validator.group.Default;
    import ${rootPackage}.common.validator.group.Create;
    import ${rootPackage}.common.validator.group.Update;
    import javax.validation.constraints.NotNull;
    import com.baomidou.mybatisplus.core.metadata.IPage;
    import java.time.LocalDateTime;
    import java.time.LocalDate;
</#if>
/**
 * ${comment}控制层
 *
 * @author ${author}
 * @date ${createTime?date("yyyy-MM-dd")}
 */
@Validated
@RestController
@RequestMapping("${pathName}")
@Api(value = "${comment}", tags = "${comment}")
@AllArgsConstructor
public class ${classNameUpperCase}Controller extends BaseController{

    private final ${classNameUpperCase}Service ${classNameLowerCase}Service;

<#if plusEnabled == 1>
    @ApiOperation(value = "根据唯一ID获取详细信息", notes = "根据唯一ID获取详细信息")
    @GetMapping("/info/{${pk.attrNameLowerCase}}")
    public R${r'<'}${classNameUpperCase}DetailDTO> info(@PathVariable("${pk.attrNameLowerCase}") @NotNull(message = "唯一ID不能为空") ${pk.attrType} ${pk.attrNameLowerCase}) {
        return R.ok(${classNameLowerCase}Service.getDetailById(${pk.attrNameLowerCase}));
    }

    @ApiOperation(value = "${comment}分页查询", notes = "${comment}分页查询")
    @GetMapping("/page")
    public R${r'<IPage<'}${classNameUpperCase}ListDTO>> page(@RequestParam ${classNameUpperCase}PageParamVO vo) {
    return R.ok(${classNameLowerCase}Service.getPage(vo.getCurrent(),vo.getSize(),<#assign paramsStr = ''>
    <#list columns as column>
        <#if column.columnName != pk.columnName && !exclusionShowColumns?contains(column.columnName) && !column.dataType?contains('text')>
            <#assign paramsStr>${paramsStr}vo.get${column.attrNameUpperCase}(),</#assign>
        </#if>
    </#list>${paramsStr?trim?substring(0,paramsStr?trim?length-1)}));
    }

    @ApiOperation(value = "新建${comment}", notes = "新建${comment}，返回ID")
    @PostMapping("/add")
    public R<${pk.attrType}> add(@Validated({Create.class}) @RequestBody ${classNameUpperCase}InputVO vo) {
        ${classNameUpperCase}Entity entity = vo.convertToEntity();
        entity.set${pk.attrNameUpperCase}(null);
        ${classNameLowerCase}Service.save(entity);
        return R.ok(entity.get${pk.attrNameUpperCase}());
    }

    @ApiOperation(value = "更新${comment}", notes = "更新${comment}")
    @PostMapping("/update")
    public R${r'<'}String> update(@Validated({Update.class}) @RequestBody ${classNameUpperCase}InputVO vo) {
        ${classNameUpperCase}Entity entity = ${classNameLowerCase}Service.getById(vo.get${pk.attrNameUpperCase}());
        if (null == entity) {
            return R.failed(ResultConstant.NOT_FOUND, "没有找到需要更新的记录");
        }
        ${classNameLowerCase}Service.updateById(vo.convertToEntity());
        return R.ok();
    }

    @ApiOperation(value = "根据唯一ID删除${comment}", notes = "根据唯一ID删除${comment}")
    @PostMapping("/delete/{${pk.attrNameLowerCase}}")
    public R${r'<'}Boolean> delete(@PathVariable("${pk.attrNameLowerCase}") @NotNull(message = "唯一ID不能为空") ${pk.attrType} ${pk.attrNameLowerCase}) {
        UserOnlineDto user = getOnlineUser();
        ${classNameUpperCase}Entity entity = ${classNameLowerCase}Service.getById(${pk.attrNameLowerCase});
        if (null == entity) {
            return R.failed(ResultConstant.NOT_FOUND, "没有找到需要删除的记录");
        }
        //TODO 其他限制删除条件
    <#if logicDelete == 1>
        return R.ok(${classNameLowerCase}Service.delete(${pk.attrNameLowerCase}, user.getUserId()));
    <#else>
        return R.ok(${classNameLowerCase}Service.removeById(${pk.attrNameLowerCase}));
    </#if>
    }
</#if>
}
