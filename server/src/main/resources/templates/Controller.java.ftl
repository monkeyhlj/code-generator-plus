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
import ${commonPackage}.common.base.BaseController;
import ${commonPackage}.common.domain.Result;
import ${commonPackage}.common.domain.ResultEnum;
import ${codePackage}.service.${classNameUpperCase}Service;
import ${codePackage}.entity.${classNameUpperCase}Entity;

<#if plusEnabled == 1>
import ${codePackage}.vo.${classNameUpperCase}InputVO;
import ${codePackage}.dto.${classNameUpperCase}DetailDTO;
import ${codePackage}.dto.${classNameUpperCase}ListDTO;
import ${codePackage}.query.${classNameUpperCase}ListQuery;
import ${codePackage}.query.${classNameUpperCase}PageQuery;
import ${commonPackage}.common.validator.group.Default;
import ${commonPackage}.common.validator.group.Create;
import ${commonPackage}.common.validator.group.Update;
import javax.validation.constraints.NotNull;
import com.baomidou.mybatisplus.core.metadata.IPage;
import java.time.LocalDateTime;
import java.time.LocalDate;
import java.util.List;
</#if>
/**
* ${comment}请求处理层
*
* @author ${author}
* @date ${createTime?date("yyyy-MM-dd")}
*/
@Validated
@RestController
@RequestMapping("${mappingName}")
@Api(value = "${commentEscape}", tags = "${commentEscape}")
@AllArgsConstructor
public class ${classNameUpperCase}Controller extends BaseController{

private final ${classNameUpperCase}Service ${classNameLowerCase}Service;

<#if plusEnabled == 1>
    @ApiOperation(value = "根据唯一ID获取详细信息", notes = "根据唯一ID获取详细信息")
    @GetMapping("/detail/{${pk.attrNameLowerCase}}")
    public Result${r'<'}${classNameUpperCase}DetailDTO> detail(@PathVariable("${pk.attrNameLowerCase}") @NotNull(message = "唯一ID不能为空") ${pk.attrType} ${pk.attrNameLowerCase}) {
    return Result.ok(${classNameLowerCase}Service.getDetailById(${pk.attrNameLowerCase}));
    }

    @ApiOperation(value = "${commentEscape}列表查询", notes = "${commentEscape}列表查询")
    @ApiImplicitParams({
    @ApiImplicitParam(name = "sortParam", value = "排序参数", paramType = "query")
    , @ApiImplicitParam(name = "sortord", value = "排序方式：正序asc，倒序desc，默认为desc", paramType = "query")
    <#list columns as column><#if column.columnName != pk.columnName && !exclusionShowColumns?contains(column.columnName) && !column.dataType?contains('text')>
        , @ApiImplicitParam(name = "${column.attrNameLowerCase}", value = "${column.commentEscape}", paramType = "query")
    </#if></#list>
    })
    @GetMapping("/list")
    public Result${r'<List<'}${classNameUpperCase}ListDTO>> list(${classNameUpperCase}ListQuery query) {
    return Result.ok(${classNameLowerCase}Service.getList(query));
    }

    @ApiOperation(value = "${commentEscape}分页查询", notes = "${commentEscape}分页查询")
    @ApiImplicitParams({
    @ApiImplicitParam(name = "sortParam", value = "排序参数", paramType = "query")
    , @ApiImplicitParam(name = "sortord", value = "排序方式：正序asc，倒序desc，默认为desc", paramType = "query")
    , @ApiImplicitParam(name = "current", value = "当前页", paramType = "query", dataType = "int", defaultValue = "1")
    , @ApiImplicitParam(name = "size", value = "每页显示条数", paramType = "query", dataType = "int", defaultValue = "10")
    <#list columns as column><#if column.columnName != pk.columnName && !exclusionShowColumns?contains(column.columnName) && !column.dataType?contains('text')>
        , @ApiImplicitParam(name = "${column.attrNameLowerCase}", value = "${column.commentEscape}", paramType = "query")
    </#if></#list>
    })
    @GetMapping("/page")
    public Result${r'<IPage<'}${classNameUpperCase}ListDTO>> page(${classNameUpperCase}PageQuery query) {
    return Result.ok(${classNameLowerCase}Service.getPage(query));
    }

    @ApiOperation(value = "新建${commentEscape}", notes = "新建${commentEscape}，返回ID")
    @PostMapping("/add")
    public Result${r'<'}${pk.attrType}> add(@Validated({Create.class}) @RequestBody ${classNameUpperCase}InputVO vo) {
    ${classNameUpperCase}Entity entity = vo.convertToEntity();
    entity.set${pk.attrNameUpperCase}(null);
    ${classNameLowerCase}Service.save(entity);
    return Result.ok(entity.get${pk.attrNameUpperCase}());
    }

    @ApiOperation(value = "更新${commentEscape}", notes = "更新${commentEscape}")
    @PostMapping("/update")
    public Result${r'<'}String> update(@Validated({Update.class}) @RequestBody ${classNameUpperCase}InputVO vo) {
    ${classNameUpperCase}Entity entity = ${classNameLowerCase}Service.getById(vo.get${pk.attrNameUpperCase}());
    if (null == entity) {
    return Result.failed(ResultEnum.NOT_FOUND, "没有找到需要更新的记录");
    }
    ${classNameLowerCase}Service.updateById(vo.convertToEntity());
    return Result.ok();
    }

    @ApiOperation(value = "根据唯一ID删除${commentEscape}", notes = "根据唯一ID删除${commentEscape}")
    @ApiImplicitParams({
    @ApiImplicitParam(name = "${pk.attrNameLowerCase}", value = "${pk.comment}", paramType = "path"),
    })
    @PostMapping("/delete/{${pk.attrNameLowerCase}}")
    public Result${r'<'}Boolean> delete(@PathVariable("${pk.attrNameLowerCase}") @NotNull(message = "${pk.comment}不能为空") ${pk.attrType} ${pk.attrNameLowerCase}) {
    UserOnlineDTO user = getOnlineUser();
    ${classNameUpperCase}Entity entity = ${classNameLowerCase}Service.getById(${pk.attrNameLowerCase});
    if (null == entity) {
    return Result.failed(ResultEnum.NOT_FOUND, "没有找到需要删除的记录");
    }
    //TODO 其他限制删除条件
    <#if logicDelete == 1>
        return Result.ok(${classNameLowerCase}Service.delete(${pk.attrNameLowerCase}, user.getUserId()));
    <#else>
        return Result.ok(${classNameLowerCase}Service.removeById(${pk.attrNameLowerCase}));
    </#if>
    }
</#if>
}
