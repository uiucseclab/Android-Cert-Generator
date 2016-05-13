.class public Lcom/facebook/nodex/resources/NodexResources;
.super Ljava/lang/Object;
.source "page_video_hub"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/nodex/resources/NodexResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/nodex/resources/NodexResources;->a:Landroid/content/res/Resources;

    .line 25
    iput-object p2, p0, Lcom/facebook/nodex/resources/NodexResources;->b:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/nodex/resources/NodexResources;->a:Landroid/content/res/Resources;

    const-string v1, "layout"

    iget-object v2, p0, Lcom/facebook/nodex/resources/NodexResources;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/nodex/resources/NodexResources;->a:Landroid/content/res/Resources;

    const-string v1, "id"

    iget-object v2, p0, Lcom/facebook/nodex/resources/NodexResources;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/nodex/resources/NodexResources;->a:Landroid/content/res/Resources;

    const-string v1, "string"

    iget-object v2, p0, Lcom/facebook/nodex/resources/NodexResources;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
