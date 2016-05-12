.class public Lcom/samsung/milk/milkvideo/views/UserListItemView;
.super Landroid/widget/FrameLayout;
.source "UserListItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/UserListItemView$1;,
        Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;
    }
.end annotation


# instance fields
.field private iconUri:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->init()V

    .line 30
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/views/UserListItemView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/UserListItemView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030064

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    const v1, 0x7f06012f

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/UserListItemView;Lcom/samsung/milk/milkvideo/views/UserListItemView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v1, 0x7f060130

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/UserListItemView;Lcom/samsung/milk/milkvideo/views/UserListItemView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getIconUserListUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView;->iconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setIconUserListUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView;->iconUri:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView;->username:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView;->uuid:Ljava/lang/String;

    .line 46
    return-void
.end method
