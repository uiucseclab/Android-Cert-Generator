.class public Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;
.super Ljava/lang/Object;
.source "package"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/nodex/resources/NodexResources;

.field public c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Throwable;

.field private f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/facebook/nodex/resources/NodexResources;

    invoke-direct {v0, p1}, Lcom/facebook/nodex/resources/NodexResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->b:Lcom/facebook/nodex/resources/NodexResources;

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 105
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->b:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {v1, p1}, Lcom/facebook/nodex/resources/NodexResources;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->c:Ljava/lang/String;

    .line 80
    .line 85
    return-object p0
.end method

.method public final a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->e:Ljava/lang/Throwable;

    .line 100
    return-object p0
.end method

.method public final a()Lcom/facebook/nodex/startup/splashscreen/NodexError;
    .locals 6

    .prologue
    .line 109
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/NodexError;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->e:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v4}, Lcom/facebook/nodex/startup/splashscreen/NodexError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->d:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->b:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {v1, p1}, Lcom/facebook/nodex/resources/NodexResources;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->b(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    .line 95
    return-object p0
.end method
