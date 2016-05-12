.class Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory$DefaultIndicatorLayoutFactory;
.super Ljava/lang/Object;
.source "IndicatorLayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultIndicatorLayoutFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIndicatorLayout(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;

    invoke-direct {v0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-object v0
.end method

.method public static createIndicatorLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "clazzName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/DefaultIndicatorLayout;

    return-object v0
.end method
