.class public Lcom/facebook/common/errorreporting/FbCrashReporter;
.super Lcom/facebook/acra/reporter/BaseCrashReporter;
.source "yc"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/acra/reporter/BaseCrashReporter;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 19
    const-string v0, "https://www.facebook.com/mobile/generic_android_crash_logs/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
