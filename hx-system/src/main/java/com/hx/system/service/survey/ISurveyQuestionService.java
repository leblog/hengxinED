package com.hx.system.service.survey;

import com.hx.system.domain.survey.SurveyQuestion;

import java.util.List;

/**
 * 问卷题目Service接口
 * 
 * @author survey
 * @date 2021-03-21
 */
public interface ISurveyQuestionService 
{
    /**
     * 查询问卷题目
     * 
     * @param questionId 问卷题目ID
     * @return 问卷题目
     */
    public SurveyQuestion selectSurveyQuestionById(Long questionId);

    /**
     * 查询问卷题目列表
     * 
     * @param surveyQuestion 问卷题目
     * @return 问卷题目集合
     */
    public List<SurveyQuestion> selectSurveyQuestionList(SurveyQuestion surveyQuestion);

    /**
     * 新增问卷题目
     * 
     * @param surveyQuestion 问卷题目
     * @return 结果
     */
    public int insertSurveyQuestion(SurveyQuestion surveyQuestion);

    /**
     * 修改问卷题目
     * 
     * @param surveyQuestion 问卷题目
     * @return 结果
     */
    public int updateSurveyQuestion(SurveyQuestion surveyQuestion);

    /**
     * 批量删除问卷题目
     * 
     * @param questionIds 需要删除的问卷题目ID
     * @return 结果
     */
    public int deleteSurveyQuestionByIds(Long[] questionIds);

    /**
     * 删除问卷题目信息
     * 
     * @param questionId 问卷题目ID
     * @return 结果
     */
    public int deleteSurveyQuestionById(Long questionId);
}
