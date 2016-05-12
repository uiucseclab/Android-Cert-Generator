.class public final enum Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;
.super Ljava/lang/Enum;
.source "LegalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/activity/LegalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

.field public static final enum COPYRIGHT_AND_LICENSES:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

.field public static final enum PRIVACY_POLICY:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

.field public static final enum TERMS_OF_SERVICE:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    const-string v1, "PRIVACY_POLICY"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->PRIVACY_POLICY:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    new-instance v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    const-string v1, "TERMS_OF_SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->TERMS_OF_SERVICE:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    new-instance v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    const-string v1, "COPYRIGHT_AND_LICENSES"

    invoke-direct {v0, v1, v4}, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->COPYRIGHT_AND_LICENSES:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    sget-object v1, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->PRIVACY_POLICY:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->TERMS_OF_SERVICE:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->COPYRIGHT_AND_LICENSES:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->$VALUES:[Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->$VALUES:[Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    invoke-virtual {v0}, [Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    return-object v0
.end method
