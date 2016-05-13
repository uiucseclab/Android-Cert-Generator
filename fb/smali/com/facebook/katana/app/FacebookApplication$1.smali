.class Lcom/facebook/katana/app/FacebookApplication$1;
.super Ljava/lang/Object;
.source "}"

# interfaces
.implements Lcom/facebook/acra/CustomReportDataSupplier;


# instance fields
.field final synthetic a:Lcom/facebook/katana/app/FacebookApplication;


# direct methods
.method constructor <init>(Lcom/facebook/katana/app/FacebookApplication;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/facebook/katana/app/FacebookApplication$1;->a:Lcom/facebook/katana/app/FacebookApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->e()Z

    move-result v0

    .line 227
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
