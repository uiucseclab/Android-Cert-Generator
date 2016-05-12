.class public Lcom/samsung/milk/milkvideo/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# instance fields
.field private pullToRefreshEnabled:Z

.field private rainbowBarInCocktail:Z

.field private shouldNotify:Z

.field private showNextVideoInCocktail:Z

.field private showSamsungLogin:Z

.field private useYoutubeWebPlayer:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->pullToRefreshEnabled:Z

    return v0
.end method

.method public isRainbowBarInCocktail()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->rainbowBarInCocktail:Z

    return v0
.end method

.method public isShowNextVideoInCocktail()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->showNextVideoInCocktail:Z

    return v0
.end method

.method public setPullToRefreshEnabled(Z)V
    .locals 0
    .param p1, "pullToRefreshEnabled"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->pullToRefreshEnabled:Z

    .line 17
    return-void
.end method

.method public setRainbowBarInCocktail(Z)V
    .locals 0
    .param p1, "rainbowBarInCocktail"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->rainbowBarInCocktail:Z

    .line 33
    return-void
.end method

.method public setShouldNotify(Z)V
    .locals 0
    .param p1, "shouldNotify"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->shouldNotify:Z

    .line 49
    return-void
.end method

.method public setShowNextVideoInCocktail(Z)V
    .locals 0
    .param p1, "showNextVideoInCocktail"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->showNextVideoInCocktail:Z

    .line 41
    return-void
.end method

.method public setShowSamsungLogin(Z)V
    .locals 0
    .param p1, "showSamsungLogin"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->showSamsungLogin:Z

    .line 55
    return-void
.end method

.method public setUseYoutubeWebPlayer(Z)V
    .locals 0
    .param p1, "useYoutubeWebPlayer"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->useYoutubeWebPlayer:Z

    .line 25
    return-void
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->shouldNotify:Z

    return v0
.end method

.method public showSamsungLogin()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->showSamsungLogin:Z

    return v0
.end method

.method public useYoutubeWebPlayer()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/FeatureFlags;->useYoutubeWebPlayer:Z

    return v0
.end method
