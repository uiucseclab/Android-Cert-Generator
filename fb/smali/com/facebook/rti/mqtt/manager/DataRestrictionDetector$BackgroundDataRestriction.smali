.class public final enum Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;
.super Ljava/lang/Enum;
.source "sk"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

.field public static final enum NO:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

.field public static final enum UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

.field public static final enum YES:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->YES:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    .line 45
    new-instance v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->NO:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    .line 46
    new-instance v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    const-string v1, "UNSURE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->YES:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->NO:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->$VALUES:[Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->$VALUES:[Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    return-object v0
.end method
