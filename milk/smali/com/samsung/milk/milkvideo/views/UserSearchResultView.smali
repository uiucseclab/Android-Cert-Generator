.class public Lcom/samsung/milk/milkvideo/views/UserSearchResultView;
.super Landroid/widget/LinearLayout;
.source "UserSearchResultView.java"


# instance fields
.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private userUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/UserSearchResultView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/UserSearchResultView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->userUuid:Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 37
    const v0, 0x7f030060

    invoke-static {p1, v0, p0}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    new-instance v0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView$1;-><init>(Lcom/samsung/milk/milkvideo/views/UserSearchResultView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method private setIconUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 59
    const v2, 0x7f06012b

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .local v1, "userIconField":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "android.resource://com.samsung.milk.milkvideo/2130837504"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 64
    return-void

    .line 60
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setupUsernameField(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 53
    const v1, 0x7f06012c

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, "userField":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->setEnabled(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public setUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 2
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->userUuid:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->setupUsernameField(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getIconUserListUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->setIconUri(Ljava/lang/String;)V

    .line 50
    return-void
.end method
