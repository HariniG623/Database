 CASE
    WHEN SORT.xFreeText > 0
    THEN FreeText.fText
    ELSE Hetype.Description 
  END AS Type_description




  FROM SORT
  INNER JOIN INVDATA ON INVDATA.Sort_Link = SORT.Lineref
  LEFT JOIN Hetype ON Hetype.Type = SORT.Type
  LEFT JOIN FreeText ON FreeText.idx = SORT.xFreeText   



  SELECT EQLISTS.DateOut,
  EQLISTS.Eql_name,
  SORT.Quant,
  SORT.D1,
  EQLISTS.Defcon,
  EQLISTS.Eql_Title,
  EQLISTS.Client_name,
  EQLISTS.Client_no
FROM SORT
  LEFT JOIN Hetype ON Hetype.Type = SORT.Type                   
  INNER JOIN EQLISTS ON EQLISTS.Eql_no = SORT.Eqlno
  LEFT JOIN FreeText ON FreeText.idx = SORT.xFreeText
WHERE EQLISTS.Eql_no = 65720 AND                                   
  EQLISTS.Defcon > 2 AND
  EQLISTS.Client_no = 8279   