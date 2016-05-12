.class synthetic Ldagger/internal/codegen/ModuleAdapterProcessor$1;
.super Ljava/lang/Object;
.source "ModuleAdapterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/codegen/ModuleAdapterProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$dagger$Provides$Type:[I

.field static final synthetic $SwitchMap$javax$lang$model$element$ElementKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 332
    invoke-static {}, Ldagger/Provides$Type;->values()[Ldagger/Provides$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    :try_start_0
    sget-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    sget-object v1, Ldagger/Provides$Type;->UNIQUE:Ldagger/Provides$Type;

    invoke-virtual {v1}, Ldagger/Provides$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    sget-object v1, Ldagger/Provides$Type;->SET:Ldagger/Provides$Type;

    invoke-virtual {v1}, Ldagger/Provides$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    sget-object v1, Ldagger/Provides$Type;->SET_VALUES:Ldagger/Provides$Type;

    invoke-virtual {v1}, Ldagger/Provides$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    :goto_2
    invoke-static {}, Ljavax/lang/model/element/ElementKind;->values()[Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    :try_start_3
    sget-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    .line 332
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
