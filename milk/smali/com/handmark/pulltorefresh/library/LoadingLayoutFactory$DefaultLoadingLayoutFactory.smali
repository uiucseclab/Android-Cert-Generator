.class Lcom/handmark/pulltorefresh/library/LoadingLayoutFactory$DefaultLoadingLayoutFactory;
.super Ljava/lang/Object;
.source "LoadingLayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/LoadingLayoutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultLoadingLayoutFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLoadingLayout(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "orientation"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;>;"
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static createLoadingLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "clazzName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;

    return-object v0
.end method
