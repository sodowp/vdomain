package dao;

import model.TFuncintroductionDto;
import org.springframework.stereotype.Component;
import model.TFuncintroductionModel;

import java.util.List;

/**
 * Created by Administrator on 2014/7/21 0021.
 */
@Component("tFuncintroductionDao")
public class TFuncintroductionDao extends BaseDao {
    public static final String HQL_QUERYFUNCDTOLIST="select f.id,f.funcName,f.funcTitle , f.funcIconUrl from TFuncintroductionModel f";
     public List<TFuncintroductionModel> queryFuncList()
     {
         List<TFuncintroductionModel> FuncList = (List<TFuncintroductionModel>)super.getAll(TFuncintroductionModel.class);
         return FuncList;
     }

    public List<TFuncintroductionDto> queryFuncDtoList(){
        List<TFuncintroductionDto> funcList=(List<TFuncintroductionDto>)super.getAll(TFuncintroductionDto.class);
        return funcList;
    }

}