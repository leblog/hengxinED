package com.hx.web.controller.common;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.lang.tree.Tree;
import cn.hutool.core.lang.tree.TreeNode;
import cn.hutool.core.lang.tree.TreeNodeConfig;
import cn.hutool.core.lang.tree.TreeUtil;
import cn.hutool.core.util.StrUtil;
import com.hx.system.domain.CrmDataRegion;
import com.hx.system.mapper.CrmDataRegionMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 全球地区
 *
 * @author RD02
 */
@Slf4j
@RestController
@RequestMapping("/open/dataRegion")
public class DataRegion {
    @Autowired
    private CrmDataRegionMapper mapper;

    @GetMapping("/info")
    public List<Tree<String>> info() {
        CrmDataRegion region = new CrmDataRegion();
        List<CrmDataRegion> list = mapper.selectCrmDataRegionList(region);
        // 构建node列表
        List<TreeNode<String>> nodeList = CollUtil.newArrayList();
        for (CrmDataRegion crmDataRegion : list) {
            nodeList.add(new TreeNode<>(
                StrUtil.toString(crmDataRegion.getId()),
                StrUtil.toString(crmDataRegion.getPid()),
                StrUtil.toString(crmDataRegion.getName()),
                StrUtil.toString(crmDataRegion.getCode())
            ));
        }
        // 构建node列表
        //配置
        TreeNodeConfig treeNodeConfig = new TreeNodeConfig();
        // 自定义属性名 都要默认值的
        treeNodeConfig.setIdKey("id");
        treeNodeConfig.setParentIdKey("pid");
        treeNodeConfig.setWeightKey("label");
        treeNodeConfig.setNameKey("value");
        // 最大递归深度
        treeNodeConfig.setDeep(3);
        //转换器
        List<Tree<String>> treeNodes = TreeUtil.build(nodeList, "0", treeNodeConfig,
                (treeNode, tree) -> {
                    tree.setId(treeNode.getId());
                    tree.setParentId(treeNode.getParentId());
                    tree.setWeight((Comparable<?>) treeNode.getName());
                    tree.setName(treeNode.getName());
                    // 扩展属性 ...
                    // tree.putExtra("extraField", 666);
                    // tree.putExtra("other", new Object());
                });
        return treeNodes;
    }

}
