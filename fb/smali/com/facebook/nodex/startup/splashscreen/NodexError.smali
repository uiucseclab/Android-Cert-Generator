.class public Lcom/facebook/nodex/startup/splashscreen/NodexError;
.super Ljava/lang/Object;
.source "package"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Throwable;

.field private final d:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->c:Ljava/lang/Throwable;

    .line 27
    iput-object p4, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->d:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 28
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "title"

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 43
    const-string v1, "message"

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 46
    const-string v1, "exception"

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->d:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    if-eqz v1, :cond_3

    .line 49
    const-string v1, "action"

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError;->d:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-virtual {v2}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :cond_3
    return-object v0
.end method
