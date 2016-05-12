.class public Lcom/samsung/milk/milkvideo/fragments/SearchFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "SearchFragment.java"


# static fields
.field public static SEARCH_TIMEOUT:I = 0x0

.field private static final THUMBNAILS_ON_SCREEN:I = 0x4


# instance fields
.field private cancelButton:Landroid/graphics/drawable/Drawable;

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private handlerRunnable:Ljava/lang/Runnable;

.field private iconSearch:Landroid/graphics/drawable/Drawable;

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private searchField:Landroid/widget/TextView;

.field private searchListHeader:Landroid/view/View;

.field private searchResultList:Landroid/widget/ListView;

.field private userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;"
        }
    .end annotation
.end field

.field private videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->SEARCH_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->search()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->showCancelButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->initSearchHeader()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;Lcom/samsung/milk/milkvideo/api/SearchResultResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;
    .param p1, "x1"    # Lcom/samsung/milk/milkvideo/api/SearchResultResponse;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->updateSearchListHeader(Lcom/samsung/milk/milkvideo/api/SearchResultResponse;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->startSeeAllUsersActivityIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->hideCancelButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->handlerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->touchingXButton(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->updateVideosForScroll()V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->userList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    return-object v0
.end method

.method private closeKeyboard()V
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 282
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearFocus()V

    .line 283
    return-void
.end method

.method private hideCancelButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->iconSearch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void
.end method

.method private initSearchHeader()V
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    const v1, 0x7f060128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$7;-><init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/SearchFragment;
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;-><init>()V

    return-object v0
.end method

.method private search()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "searchTerm":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;-><init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getSearchResults(Ljava/lang/String;Lretrofit/Callback;)V

    .line 225
    return-void
.end method

.method private showCancelButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->iconSearch:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->cancelButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method

.method private startSeeAllUsersActivityIntent()V
    .locals 3

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->userList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .local v0, "parcelableUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/milk/milkvideo/activity/UserSearchResultsActivity;->getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 240
    .local v1, "userSearchResultsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method private touchingXButton(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 164
    const/4 v0, 0x2

    .line 165
    .local v0, "DRAWABLE_RIGHT":I
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v5

    if-nez v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateSearchListHeader(Lcom/samsung/milk/milkvideo/api/SearchResultResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/api/SearchResultResponse;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 244
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    const v8, 0x7f060126

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, "searchUsersHeaders":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    const v8, 0x7f060127

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;

    .line 246
    .local v4, "userSearchResultView":Lcom/samsung/milk/milkvideo/views/UserSearchResultView;
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    const v8, 0x7f060128

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 247
    .local v3, "seeAllUsersView":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    const v8, 0x7f060129

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, "searchVideoTitle":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    const v8, 0x7f06012a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "noResultsView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->hasUsers()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v4, v5}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 252
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 253
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :goto_0
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;

    const v8, 0x7f06012b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->hasUsers()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->hasVideos()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->hasResults()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void

    .line 255
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 260
    goto :goto_1

    :cond_3
    move v5, v7

    .line 261
    goto :goto_2

    :cond_4
    move v7, v6

    .line 262
    goto :goto_3
.end method

.method private updateVideosForScroll()V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, "listItem":Landroid/view/View;
    instance-of v3, v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 157
    check-cast v2, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .line 158
    .local v2, "videoView":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->handleScroll()V

    .line 154
    .end local v2    # "videoView":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "listItem":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v0, 0x7f030039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onDestroyView()V

    .line 150
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public onVideoClick(Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->getRequestedVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getPositionInList()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 277
    return-void
.end method

.method public onVideoFeedListTouched(Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->closeKeyboard()V

    .line 272
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;

    .line 69
    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;

    invoke-direct {v1, v2, p0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;-><init>(Landroid/widget/ListView;Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    .line 70
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 75
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 76
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->handlerRunnable:Ljava/lang/Runnable;

    .line 90
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->cancelButton:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->iconSearch:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->cancelButton:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->cancelButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->cancelButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->iconSearch:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->iconSearch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->iconSearch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$4;-><init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$5;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$5;-><init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 145
    return-void
.end method
