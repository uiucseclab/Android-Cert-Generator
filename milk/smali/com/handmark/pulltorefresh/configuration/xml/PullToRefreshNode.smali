.class Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;
.super Ljava/lang/Object;
.source "PullToRefreshNode.java"


# instance fields
.field private googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private googleStyleViewLayoutClazzNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorLayoutClazzNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingLayoutClazzNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "loadingLayoutClazzNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "indicatorLayoutClazzNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "googleStyleViewLayoutClazzNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "googleStyleProgressLayoutClazzNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "LoadingLayout Class Name Map"

    invoke-static {p1, v0}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-string v0, "Loading Layout Class Name Map"

    invoke-static {p2, v0}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->loadingLayoutClazzNameMap:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->indicatorLayoutClazzNameMap:Ljava/util/Map;

    .line 63
    iput-object p3, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->googleStyleViewLayoutClazzNameMap:Ljava/util/Map;

    .line 64
    iput-object p4, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;

    .line 65
    return-void
.end method


# virtual methods
.method public extendProperties(Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;)V
    .locals 5
    .param p1, "extendedNode"    # Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    .prologue
    .line 99
    const-string v4, "Extended Node"

    invoke-static {p1, v4}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v2, p1, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->indicatorLayoutClazzNameMap:Ljava/util/Map;

    .line 101
    .local v2, "indicatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->loadingLayoutClazzNameMap:Ljava/util/Map;

    .line 102
    .local v3, "loadingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->googleStyleViewLayoutClazzNameMap:Ljava/util/Map;

    .line 103
    .local v1, "googleStyleViewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;

    .line 105
    .local v0, "googleStyleProgressMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->indicatorLayoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 106
    iget-object v4, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->loadingLayoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 107
    iget-object v4, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->googleStyleViewLayoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    iget-object v4, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 109
    return-void
.end method

.method public getGoogleStyleProgressLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "layoutCode"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleStyleViewLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "layoutCode"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->googleStyleViewLayoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndicatorLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "layoutCode"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->indicatorLayoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "layoutCode"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->loadingLayoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
