.class public Lcom/facebook/nodex/startup/splashscreen/NodexExceptionUtil;
.super Ljava/lang/Object;
.source "pLdFLi7Y9fGRBYynu_0msNMhS_w"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 21
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    .line 22
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/facebook/nodex/startup/splashscreen/NodexExceptionUtil;->b(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-ge v1, v3, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, p0

    goto :goto_0

    .line 28
    :cond_0
    if-ne v1, v3, :cond_1

    .line 29
    const/4 v0, 0x0

    .line 31
    :cond_1
    return-object v0
.end method

.method private static b(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
