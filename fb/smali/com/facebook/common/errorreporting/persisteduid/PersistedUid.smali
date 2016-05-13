.class public final Lcom/facebook/common/errorreporting/persisteduid/PersistedUid;
.super Ljava/lang/Object;
.source "xml"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V
    .locals 2

    .prologue
    .line 16
    const-string v0, "persisted_uid"

    new-instance v1, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;

    invoke-direct {v1, p0}, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/acra/ErrorReporter;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V

    .line 19
    return-void
.end method
