.class Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayoutFactory$DefaultGoogleStyleProgressLayoutFactory;
.super Ljava/lang/Object;
.source "GoogleStyleProgressLayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayoutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultGoogleStyleProgressLayoutFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGoogleStyleProgressLayout(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;>;"
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;

    invoke-direct {v0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static createGoogleStyleProgressLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "clazzName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;

    return-object v0
.end method
