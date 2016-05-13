.class public final enum Lcom/facebook/tools/dextr/bridge/constants/FilterType;
.super Ljava/lang/Enum;
.source "unable to start logcat process"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/tools/dextr/bridge/constants/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/tools/dextr/bridge/constants/FilterType;

.field public static final enum ASYNC:Lcom/facebook/tools/dextr/bridge/constants/FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    const-string v1, "ASYNC"

    invoke-direct {v0, v1, v2}, Lcom/facebook/tools/dextr/bridge/constants/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->ASYNC:Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    .line 5
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->ASYNC:Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->$VALUES:[Lcom/facebook/tools/dextr/bridge/constants/FilterType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/tools/dextr/bridge/constants/FilterType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/tools/dextr/bridge/constants/FilterType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->$VALUES:[Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-virtual {v0}, [Lcom/facebook/tools/dextr/bridge/constants/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    return-object v0
.end method
