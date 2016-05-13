.class public Lcom/facebook/video/analytics/VideoDisplayedInfo;
.super Ljava/lang/Object;
.source "tfhd"


# instance fields
.field private a:Z

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/common/util/TriState;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->a:Z

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->b:Ljava/util/Set;

    .line 57
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->e:Lcom/facebook/common/util/TriState;

    .line 63
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->e:Lcom/facebook/common/util/TriState;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->d:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 70
    iget-object v2, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->b:Ljava/util/Set;

    iget-object v0, v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->value:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    iput-object p2, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->c:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->e:Lcom/facebook/common/util/TriState;

    .line 90
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->f:Z

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->a:Z

    .line 97
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->f:Z

    return v0
.end method

.method public final c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    const-string v1, "initial_event"

    iget-boolean v2, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "autoplay_failure_reasons"

    iget-object v2, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->b:Ljava/util/Set;

    .line 115
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "autoplay_setting"

    iget-object v2, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "projection"

    iget-object v2, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    return-object v0
.end method
