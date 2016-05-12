.class public final Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "VideoListItemView$$InjectAdapter.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/views/VideoListItemView;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/views/VideoListItemView;",
        ">;"
    }
.end annotation


# instance fields
.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;"
        }
    .end annotation
.end field

.field private featureFlags:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private loginState:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/services/LoginState;",
            ">;"
        }
    .end annotation
.end field

.field private picasso:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field

.field private repostService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/services/RepostService;",
            ">;"
        }
    .end annotation
.end field

.field private slookUtil:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/SlookUtil;",
            ">;"
        }
    .end annotation
.end field

.field private timeService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/TimeService;",
            ">;"
        }
    .end annotation
.end field

.field private videoPresenter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    const-string v1, "members/com.samsung.milk.milkvideo.views.VideoListItemView"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 44
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.samsung.milk.milkvideo.utils.TimeService"

    const-class v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->timeService:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.squareup.picasso.Picasso"

    const-class v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.samsung.milk.milkvideo.services.RepostService"

    const-class v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->repostService:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.samsung.milk.milkvideo.presenters.VideoPresenter"

    const-class v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->videoPresenter:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    const-class v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.samsung.milk.milkvideo.utils.SlookUtil"

    const-class v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    .line 52
    return-void
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->timeService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->repostService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->videoPresenter:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->eventBus:Lcom/squareup/otto/Bus;

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->timeService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/TimeService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->picasso:Lcom/squareup/picasso/Picasso;

    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->repostService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/RepostService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->repostService:Lcom/samsung/milk/milkvideo/services/RepostService;

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->videoPresenter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->videoPresenter:Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    .line 84
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V

    return-void
.end method
