.class final Lretrofit/RestMethodInfo$RxSupport;
.super Ljava/lang/Object;
.source "RestMethodInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestMethodInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RxSupport"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObservableType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "contextType"    # Ljava/lang/reflect/Type;
    .param p1, "contextRawType"    # Ljava/lang/Class;

    .prologue
    .line 496
    const-class v0, Lrx/Observable;

    invoke-static {p0, p1, v0}, Lretrofit/Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static isObservable(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "rawType"    # Ljava/lang/Class;

    .prologue
    .line 492
    const-class v0, Lrx/Observable;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
