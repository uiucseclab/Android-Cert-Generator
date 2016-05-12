.class Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory$DefaultGoogleStyleViewLayoutFactory;
.super Ljava/lang/Object;
.source "GoogleStyleViewLayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultGoogleStyleViewLayoutFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGoogleStyleViewLayout(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;

    invoke-direct {v0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static createGoogleStyleViewLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "clazzName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleViewLayout;

    return-object v0
.end method
