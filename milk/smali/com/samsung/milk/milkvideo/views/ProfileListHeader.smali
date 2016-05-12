.class public abstract Lcom/samsung/milk/milkvideo/views/ProfileListHeader;
.super Landroid/widget/RelativeLayout;
.source "ProfileListHeader.java"


# instance fields
.field blur:Lcom/samsung/milk/milkvideo/utils/Blur;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field localProfilePhotoManager:Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected user:Lcom/samsung/milk/milkvideo/models/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract findSubViews()V
.end method

.method protected abstract getLayoutId()I
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->findSubViews()V

    .line 46
    return-void
.end method

.method public abstract populateUserData()V
.end method

.method protected setBackgroundPhoto()V
    .locals 9

    .prologue
    .line 49
    const v5, 0x7f0600e2

    invoke-virtual {p0, v5}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 50
    .local v4, "userIcon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/User;->getIconUri()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "android.resource://com.samsung.milk.milkvideo/2130837669"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, "iconUri":Landroid/net/Uri;
    :goto_0
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->localProfilePhotoManager:Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->getProfilePhoto()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 54
    .local v3, "savedPhoto":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v5, v1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 56
    const v5, 0x7f0600e0

    invoke-virtual {p0, v5}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, "backgroundPhoto":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/User;->getProfileBackgroundUri()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/User;->getProfileBackgroundUri()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 59
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/models/User;->getProfileBackgroundUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 66
    :goto_1
    return-void

    .line 50
    .end local v0    # "backgroundPhoto":Landroid/widget/ImageView;
    .end local v1    # "iconUri":Landroid/net/Uri;
    .end local v3    # "savedPhoto":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/User;->getIconUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 60
    .restart local v0    # "backgroundPhoto":Landroid/widget/ImageView;
    .restart local v1    # "iconUri":Landroid/net/Uri;
    .restart local v3    # "savedPhoto":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/User;->getIconUri()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 61
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->localProfilePhotoManager:Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->getProfileBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 62
    .local v2, "savedBackground":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/models/User;->getIconUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    new-instance v7, Lcom/samsung/milk/milkvideo/utils/CircularBlurTransformation;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    iget-object v8, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    invoke-direct {v7, v5, v8}, Lcom/samsung/milk/milkvideo/utils/CircularBlurTransformation;-><init>(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/utils/Blur;)V

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 64
    .end local v2    # "savedBackground":Landroid/graphics/drawable/Drawable;
    :cond_2
    const v5, 0x7f0200fa

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public abstract setPostCount(I)V
.end method

.method public setUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    .line 39
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->populateUserData()V

    .line 40
    return-void
.end method
