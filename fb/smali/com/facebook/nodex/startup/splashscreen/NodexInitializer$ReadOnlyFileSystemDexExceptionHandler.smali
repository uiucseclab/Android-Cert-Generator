.class Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$ReadOnlyFileSystemDexExceptionHandler;
.super Ljava/lang/Object;
.source "override-"

# interfaces
.implements Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$EnsureDexExceptionHandler;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$ReadOnlyFileSystemDexExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError;
    .locals 2

    .prologue
    .line 295
    const-class v0, Ljava/io/FileNotFoundException;

    const-string v1, "Read-only file system"

    invoke-static {p1, v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexExceptionUtil;->a(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$ReadOnlyFileSystemDexExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b(Landroid/content/Context;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    const-string v1, "nodex_cannot_launch_fb_app_string"

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    const-string v1, "nodex_reboot_string"

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->c(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a()Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
