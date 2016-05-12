.class final enum Lretrofit/RestMethodInfo$ParamUsage;
.super Ljava/lang/Enum;
.source "RestMethodInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestMethodInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParamUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lretrofit/RestMethodInfo$ParamUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum BODY:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum ENCODED_PATH:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum ENCODED_QUERY:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum ENCODED_QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum FIELD:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum FIELD_MAP:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum HEADER:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum PART:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum PART_MAP:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum PATH:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum QUERY:Lretrofit/RestMethodInfo$ParamUsage;

.field public static final enum QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "PATH"

    invoke-direct {v0, v1, v3}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->PATH:Lretrofit/RestMethodInfo$ParamUsage;

    .line 66
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "ENCODED_PATH"

    invoke-direct {v0, v1, v4}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_PATH:Lretrofit/RestMethodInfo$ParamUsage;

    .line 67
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v5}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    .line 68
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "ENCODED_QUERY"

    invoke-direct {v0, v1, v6}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    .line 69
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "QUERY_MAP"

    invoke-direct {v0, v1, v7}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    .line 70
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "ENCODED_QUERY_MAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    .line 71
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "FIELD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->FIELD:Lretrofit/RestMethodInfo$ParamUsage;

    .line 72
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "FIELD_MAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->FIELD_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    .line 73
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "PART"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->PART:Lretrofit/RestMethodInfo$ParamUsage;

    .line 74
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "PART_MAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->PART_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    .line 75
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "BODY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->BODY:Lretrofit/RestMethodInfo$ParamUsage;

    .line 76
    new-instance v0, Lretrofit/RestMethodInfo$ParamUsage;

    const-string v1, "HEADER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo$ParamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->HEADER:Lretrofit/RestMethodInfo$ParamUsage;

    .line 64
    const/16 v0, 0xc

    new-array v0, v0, [Lretrofit/RestMethodInfo$ParamUsage;

    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->PATH:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v0, v3

    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_PATH:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v0, v4

    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v0, v5

    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v0, v6

    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lretrofit/RestMethodInfo$ParamUsage;->FIELD:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lretrofit/RestMethodInfo$ParamUsage;->FIELD_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lretrofit/RestMethodInfo$ParamUsage;->PART:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lretrofit/RestMethodInfo$ParamUsage;->PART_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lretrofit/RestMethodInfo$ParamUsage;->BODY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lretrofit/RestMethodInfo$ParamUsage;->HEADER:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v2, v0, v1

    sput-object v0, Lretrofit/RestMethodInfo$ParamUsage;->$VALUES:[Lretrofit/RestMethodInfo$ParamUsage;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lretrofit/RestMethodInfo$ParamUsage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lretrofit/RestMethodInfo$ParamUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lretrofit/RestMethodInfo$ParamUsage;

    return-object v0
.end method

.method public static values()[Lretrofit/RestMethodInfo$ParamUsage;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lretrofit/RestMethodInfo$ParamUsage;->$VALUES:[Lretrofit/RestMethodInfo$ParamUsage;

    invoke-virtual {v0}, [Lretrofit/RestMethodInfo$ParamUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lretrofit/RestMethodInfo$ParamUsage;

    return-object v0
.end method
