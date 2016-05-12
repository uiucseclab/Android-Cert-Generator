.class public final enum Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
.super Ljava/lang/Enum;
.source "MyProfileVideoTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

.field public static final enum REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

.field public static final enum STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    const-string v1, "REPOSTS"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .line 106
    new-instance v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    const-string v1, "STARRED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->$VALUES:[Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    return-object v0
.end method

.method public static values()[Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->$VALUES:[Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-virtual {v0}, [Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    return-object v0
.end method
