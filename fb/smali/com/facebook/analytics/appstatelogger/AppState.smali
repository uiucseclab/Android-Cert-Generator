.class Lcom/facebook/analytics/appstatelogger/AppState;
.super Ljava/lang/Object;
.source "video/x-vnd.on2.vp8"


# instance fields
.field private final a:Lcom/facebook/common/process/ProcessName;

.field private final b:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/analytics/appstatelogger/AppState;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/facebook/analytics/appstatelogger/AppState;->b()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/facebook/analytics/appstatelogger/AppState;->a()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    .line 22
    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppState;->a:Lcom/facebook/common/process/ProcessName;

    .line 23
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppState;->b:Landroid/support/v4/util/SimpleArrayMap;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/process/ProcessName;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/analytics/appstatelogger/AppState;->a:Lcom/facebook/common/process/ProcessName;

    .line 15
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppState;->b:Landroid/support/v4/util/SimpleArrayMap;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppState;->b:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public final b()Lcom/facebook/common/process/ProcessName;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppState;->a:Lcom/facebook/common/process/ProcessName;

    return-object v0
.end method
