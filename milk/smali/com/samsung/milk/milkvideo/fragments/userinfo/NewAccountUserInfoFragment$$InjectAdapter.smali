.class public final Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "NewAccountUserInfoFragment$$InjectAdapter.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;",
            ">;"
        }
    .end annotation
.end field

.field private tracker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    const/4 v0, 0x0

    const-string v1, "members/com.samsung.milk.milkvideo.fragments.userinfo.NewAccountUserInfoFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 35
    const-string v0, "com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    .line 36
    const-string v1, "members/com.samsung.milk.milkvideo.fragments.userinfo.UserInfoFragment"

    const-class v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 37
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
    .line 45
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;)V

    return-void
.end method
