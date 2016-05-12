.class Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;
.super Ljava/lang/Object;
.source "InjectAdapterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/codegen/InjectAdapterProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InjectedClass"
.end annotation


# instance fields
.field final constructor:Ljavax/lang/model/element/ExecutableElement;

.field final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field final staticFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field final type:Ljavax/lang/model/element/TypeElement;


# direct methods
.method constructor <init>(Ljavax/lang/model/element/TypeElement;Ljava/util/List;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V
    .locals 0
    .param p1, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p3, "constructor"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p2, "staticFields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    .line 525
    iput-object p2, p0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    .line 526
    iput-object p3, p0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    .line 527
    iput-object p4, p0, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    .line 528
    return-void
.end method
