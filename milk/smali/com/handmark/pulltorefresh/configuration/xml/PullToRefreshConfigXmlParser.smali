.class final Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;
.super Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;
.source "PullToRefreshConfigXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$1;,
        Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;,
        Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser",
        "<",
        "Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final ONLY_ONE_REPEAT:I = 0x1


# instance fields
.field private result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;)V
    .locals 0
    .param p1, "parser"    # Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;-><init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;)V

    .line 44
    return-void
.end method

.method private init()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 51
    new-instance v9, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;-><init>(Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$1;)V

    iput-object v9, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    .line 53
    new-instance v8, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "PullToRefresh"

    invoke-direct {v8, v9}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;)V

    .line 54
    .local v8, "root":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    new-instance v7, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "LoadingLayouts"

    invoke-direct {v7, v9}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;)V

    .line 55
    .local v7, "loadingLayouts":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    new-instance v5, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "IndicatorLayouts"

    invoke-direct {v5, v9}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;)V

    .line 56
    .local v5, "indicatorLayouts":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    new-instance v3, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "GoogleStyleViewLayouts"

    invoke-direct {v3, v9}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, "googleStyleViewLayouts":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    new-instance v1, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "GoogleStyleProgressLayouts"

    invoke-direct {v1, v9}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "googleStyleProgressLayouts":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    new-instance v6, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "layout"

    new-instance v10, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;

    iget-object v11, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    iget-object v11, v11, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->loadingLayoutClazzNameMap:Ljava/util/Map;

    invoke-direct {v10, v11}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;-><init>(Ljava/util/Map;)V

    invoke-direct {v6, v9, v10}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;)V

    .line 59
    .local v6, "loadingLayout":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    new-instance v4, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "layout"

    new-instance v10, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;

    iget-object v11, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    iget-object v11, v11, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->indicatorLayoutClazzNameMap:Ljava/util/Map;

    invoke-direct {v10, v11}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;-><init>(Ljava/util/Map;)V

    invoke-direct {v4, v9, v10}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;)V

    .line 60
    .local v4, "indicatorLayout":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    new-instance v2, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "layout"

    new-instance v10, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;

    iget-object v11, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    iget-object v11, v11, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->googleStyleViewLayoutClazzNameMap:Ljava/util/Map;

    invoke-direct {v10, v11}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;-><init>(Ljava/util/Map;)V

    invoke-direct {v2, v9, v10}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;)V

    .line 61
    .local v2, "googleStyleViewLayout":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    new-instance v0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    const-string v9, "layout"

    new-instance v10, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;

    iget-object v11, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    iget-object v11, v11, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;

    invoke-direct {v10, v11}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v9, v10}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;)V

    .line 63
    .local v0, "googleStyleProgressLayout":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    invoke-virtual {v8, v7, v12}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)Z

    .line 64
    invoke-virtual {v8, v5, v12}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)Z

    .line 65
    invoke-virtual {v8, v3, v12}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)Z

    .line 66
    invoke-virtual {v8, v1, v12}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)Z

    .line 67
    invoke-virtual {v7, v6}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)Z

    .line 68
    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)Z

    .line 69
    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)Z

    .line 70
    invoke-virtual {v1, v0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)Z

    .line 72
    return-object v8
.end method


# virtual methods
.method protected generateRootNode()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->init()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    move-result-object v0

    return-object v0
.end method

.method protected getResult()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;
    .locals 5

    .prologue
    .line 86
    new-instance v0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    iget-object v1, v1, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->loadingLayoutClazzNameMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    iget-object v2, v2, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->indicatorLayoutClazzNameMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    iget-object v3, v3, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->googleStyleViewLayoutClazzNameMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->result:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;

    iget-object v4, v4, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method protected bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->getResult()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    move-result-object v0

    return-object v0
.end method
