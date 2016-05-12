.class Ldagger/internal/codegen/GraphVisualizer$BindingComparator;
.super Ljava/lang/Object;
.source "GraphVisualizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/codegen/GraphVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ldagger/internal/Binding",
        "<*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldagger/internal/codegen/GraphVisualizer$1;)V
    .locals 0
    .param p1, "x0"    # Ldagger/internal/codegen/GraphVisualizer$1;

    .prologue
    .line 129
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;-><init>()V

    return-void
.end method

.method private getStringForBinding(Ldagger/internal/Binding;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Binding",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ldagger/internal/Binding;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public compare(Ldagger/internal/Binding;Ldagger/internal/Binding;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Binding",
            "<*>;",
            "Ldagger/internal/Binding",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "left":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .local p2, "right":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;->getStringForBinding(Ldagger/internal/Binding;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;->getStringForBinding(Ldagger/internal/Binding;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p1, Ldagger/internal/Binding;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ldagger/internal/Binding;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;->compare(Ldagger/internal/Binding;Ldagger/internal/Binding;)I

    move-result v0

    return v0
.end method
