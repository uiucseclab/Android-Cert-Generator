.class public Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$1;
.super Ljava/lang/Object;
.source "xdex"

# interfaces
.implements Lcom/facebook/acra/CustomReportDataSupplier;


# instance fields
.field final synthetic a:Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;


# direct methods
.method public constructor <init>(Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$1;->a:Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$1;->a:Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;

    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a()V

    .line 314
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$1;->a:Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;

    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "n/a"

    goto :goto_0
.end method
