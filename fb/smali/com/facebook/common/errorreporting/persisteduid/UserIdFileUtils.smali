.class Lcom/facebook/common/errorreporting/persisteduid/UserIdFileUtils;
.super Ljava/lang/Object;
.source "th"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileUtils;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "UID"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 19
    const-string v0, "persisteduid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
