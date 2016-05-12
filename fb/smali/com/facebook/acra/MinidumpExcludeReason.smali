.class public final enum Lcom/facebook/acra/MinidumpExcludeReason;
.super Ljava/lang/Enum;
.source "regen_stamp"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/acra/MinidumpExcludeReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/acra/MinidumpExcludeReason;

.field public static final enum DUMP_TOO_BIG:Lcom/facebook/acra/MinidumpExcludeReason;

.field public static final enum DUMP_TOO_OLD:Lcom/facebook/acra/MinidumpExcludeReason;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/facebook/acra/MinidumpExcludeReason;

    const-string v1, "DUMP_TOO_BIG"

    const v2, 0xfb01

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/acra/MinidumpExcludeReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/acra/MinidumpExcludeReason;->DUMP_TOO_BIG:Lcom/facebook/acra/MinidumpExcludeReason;

    .line 12
    new-instance v0, Lcom/facebook/acra/MinidumpExcludeReason;

    const-string v1, "DUMP_TOO_OLD"

    const v2, 0xfb02

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/acra/MinidumpExcludeReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/acra/MinidumpExcludeReason;->DUMP_TOO_OLD:Lcom/facebook/acra/MinidumpExcludeReason;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/acra/MinidumpExcludeReason;

    sget-object v1, Lcom/facebook/acra/MinidumpExcludeReason;->DUMP_TOO_BIG:Lcom/facebook/acra/MinidumpExcludeReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/MinidumpExcludeReason;->DUMP_TOO_OLD:Lcom/facebook/acra/MinidumpExcludeReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/acra/MinidumpExcludeReason;->$VALUES:[Lcom/facebook/acra/MinidumpExcludeReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/facebook/acra/MinidumpExcludeReason;->mValue:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/acra/MinidumpExcludeReason;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/facebook/acra/MinidumpExcludeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/MinidumpExcludeReason;

    return-object v0
.end method

.method public static values()[Lcom/facebook/acra/MinidumpExcludeReason;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/facebook/acra/MinidumpExcludeReason;->$VALUES:[Lcom/facebook/acra/MinidumpExcludeReason;

    invoke-virtual {v0}, [Lcom/facebook/acra/MinidumpExcludeReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/acra/MinidumpExcludeReason;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/acra/MinidumpExcludeReason;->mValue:I

    return v0
.end method
