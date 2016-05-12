.class public final enum Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;
.super Ljava/lang/Enum;
.source "ValidationEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/ValidationEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

.field public static final enum DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

.field public static final enum FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

.field public static final enum SUCCESS:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    .line 29
    new-instance v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->SUCCESS:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    .line 30
    new-instance v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->SUCCESS:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->$VALUES:[Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->$VALUES:[Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {v0}, [Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    return-object v0
.end method
