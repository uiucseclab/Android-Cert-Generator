.class Lcom/facebook/analytics/appstatelogger/LogFileState;
.super Ljava/lang/Object;
.source "vi"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static a(I)C
    .locals 5

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%d is not a valid LogFileState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_0
    const/16 v0, 0x69

    .line 36
    :goto_0
    return v0

    .line 28
    :pswitch_1
    const/16 v0, 0x77

    goto :goto_0

    .line 29
    :pswitch_2
    const/16 v0, 0x64

    goto :goto_0

    .line 30
    :pswitch_3
    const/16 v0, 0x6a

    goto :goto_0

    .line 31
    :pswitch_4
    const/16 v0, 0x73

    goto :goto_0

    .line 32
    :pswitch_5
    const/16 v0, 0x61

    goto :goto_0

    .line 33
    :pswitch_6
    const/16 v0, 0x66

    goto :goto_0

    .line 34
    :pswitch_7
    const/16 v0, 0x6c

    goto :goto_0

    .line 35
    :pswitch_8
    const/16 v0, 0x62

    goto :goto_0

    .line 36
    :pswitch_9
    const/16 v0, 0x6e

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
