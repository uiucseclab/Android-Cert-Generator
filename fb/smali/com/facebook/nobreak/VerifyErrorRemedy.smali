.class public Lcom/facebook/nobreak/VerifyErrorRemedy;
.super Ljava/lang/Object;
.source "video_play_reason"

# interfaces
.implements Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies$KnownExceptionRemedy;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/facebook/nobreak/VerifyErrorRemedy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nobreak/VerifyErrorRemedy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 22
    :try_start_0
    const-class v0, Ljava/lang/VerifyError;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexExceptionUtil;->a(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1}, Lcom/facebook/common/dextricks/DexLibLoader;->setRegenerateOnNextLoadHint(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/facebook/nobreak/VerifyErrorRemedy;->a:Ljava/lang/String;

    const-string v2, "Something went wrong while trying to set \"odex corrupted\" flag."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
