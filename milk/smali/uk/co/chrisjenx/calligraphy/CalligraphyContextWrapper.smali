.class public Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;
.super Landroid/content/ContextWrapper;
.source "CalligraphyContextWrapper.java"


# instance fields
.field private final mAttributeId:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->getAttrId()I

    move-result v0

    iput v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->mAttributeId:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "attributeId"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 44
    iput p2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->mAttributeId:I

    .line 45
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->mAttributeId:I

    invoke-direct {v0, v1, p0, v2}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;I)V

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    :cond_0
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
