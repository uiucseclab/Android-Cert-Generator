.class public Lcom/facebook/common/sdinstall/SDInstallChecker;
.super Ljava/lang/Object;
.source "player_origin"


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(JJ)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 50
    const/4 v7, 0x0

    .line 21
    iget-object v8, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->a(Landroid/content/Context;)I

    move-result v8

    .line 23
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_3

    .line 39
    :cond_0
    :goto_0
    move v1, v7

    if-nez v1, :cond_2

    .line 66
    :cond_1
    :goto_1
    return v0

    .line 54
    :cond_2
    invoke-static {}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->a(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gtz v1, :cond_1

    .line 60
    invoke-static {}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->a(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    cmp-long v1, v2, p3

    if-ltz v1, :cond_1

    .line 66
    const/4 v0, 0x1

    goto :goto_1

    .line 29
    :cond_3
    and-int/lit8 v9, v8, 0x1

    if-nez v9, :cond_0

    .line 34
    const/high16 v9, 0x40000

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 39
    const/4 v7, 0x1

    goto :goto_0
.end method
