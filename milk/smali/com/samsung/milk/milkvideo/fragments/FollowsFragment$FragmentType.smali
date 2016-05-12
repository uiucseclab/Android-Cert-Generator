.class public final enum Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
.super Ljava/lang/Enum;
.source "FollowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

.field public static final enum FOLLOWERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

.field public static final enum FOLLOWING:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

.field public static final enum FRIENDS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

.field public static final enum GOOGLE_FRIENDS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

.field public static final enum REPOSTERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    const-string v1, "FOLLOWERS"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FOLLOWERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    const-string v1, "FOLLOWING"

    invoke-direct {v0, v1, v3}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FOLLOWING:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    const-string v1, "FRIENDS"

    invoke-direct {v0, v1, v4}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FRIENDS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    const-string v1, "GOOGLE_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->GOOGLE_FRIENDS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    const-string v1, "REPOSTERS"

    invoke-direct {v0, v1, v6}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->REPOSTERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FOLLOWERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FOLLOWING:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FRIENDS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->GOOGLE_FRIENDS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->REPOSTERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->$VALUES:[Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->$VALUES:[Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    invoke-virtual {v0}, [Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    return-object v0
.end method
