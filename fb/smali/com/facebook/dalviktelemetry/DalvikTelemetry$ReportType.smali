.class final enum Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;
.super Ljava/lang/Enum;
.source "width="


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

.field public static final enum NORMAL:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

.field public static final enum TEST:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    new-instance v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->NORMAL:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    .line 136
    new-instance v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    const-string v1, "TEST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->TEST:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    sget-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->NORMAL:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->TEST:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->$VALUES:[Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->$VALUES:[Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    invoke-virtual {v0}, [Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    return-object v0
.end method
