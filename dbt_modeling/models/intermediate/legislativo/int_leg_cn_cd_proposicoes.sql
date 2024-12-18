WITH tmp_proposicoes AS (
    SELECT DISTINCT
        uriPropPosterior,	
        uriPropPrincipal,	
        uriPropAnterior,	
        urlInteiroTeor,	
        dataApresentacao,	
        codTipo,	
        keywords,	
        ementa,	
        ano,	
        descricaoTipo,	
        ementaDetalhada,	
        uri,	
        numero,	
        siglaTipo,	
        uriOrgaoNumerador,	
        id,	
        ultimoStatus.url,	
        ultimoStatus.apreciacao,	
        ultimoStatus.idSituacao,	
        ultimoStatus.data,	
        ultimoStatus.descricaoSituacao,	
        ultimoStatus.despacho,	
        ultimoStatus.descricaoTramitacao,	
        ultimoStatus.idTipoTramitacao,	
        ultimoStatus.uriOrgao,	
        ultimoStatus.siglaOrgao,	
        ultimoStatus.uriRelator,	
        ultimoStatus.regime,	
        ultimoStatus.sequencia,	
        ultimoStatus.codOrgao,
    FROM {{ ref("stg_leg_cn_cd_proposicoes_2024") }}
)

SELECT * FROM tmp_proposicoes