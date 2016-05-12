.class public final enum Lcom/facebook/loom/logger/LogEntry$EntryType;
.super Ljava/lang/Enum;
.source "used Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/loom/logger/LogEntry$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum ADAPTER_NOTIFY:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum ASYNC_CALL:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum ASYNC_TASK_BACKGROUND:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum ASYNC_TASK_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum ASYNC_TASK_POST:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum ASYNC_TASK_PRE:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum CALL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum CALL_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum COUNTER:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_APPLICATION_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_APPLICATION_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_CONTENT_PROVIDER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_CONTENT_PROVIDER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_FRAGMENT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_FRAGMENT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum MARK_CANCEL:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum MARK_FAIL:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum MARK_FLAG:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum MARK_POP:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum MARK_PUSH:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum MARK_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum MARK_STOP:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum NETWORK_OP_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum NETWORK_OP_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum QPL_CANCEL:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum QPL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum QPL_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum SERV_CONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum SERV_DISCONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum SERV_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum TEST_CLOCK_SYNC_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum TEST_CLOCK_SYNC_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum TRACE_ABORT:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum TRACE_ANNOTATION:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum TRACE_BACKWARDS:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum TRACE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum TRACE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum UI_UPDATE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum UI_UPDATE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final enum UNKNOWN_TYPE:Lcom/facebook/loom/logger/LogEntry$EntryType;

.field public static final VALUES:[Lcom/facebook/loom/logger/LogEntry$EntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "UNKNOWN_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UNKNOWN_TYPE:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 19
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "UI_INPUT_START"

    invoke-direct {v0, v1, v4}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 20
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "UI_INPUT_END"

    invoke-direct {v0, v1, v5}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 22
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "UI_UPDATE_START"

    invoke-direct {v0, v1, v6}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_UPDATE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 23
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "UI_UPDATE_END"

    invoke-direct {v0, v1, v7}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_UPDATE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 25
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "CALL_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 26
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "CALL_END"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 28
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "ASYNC_CALL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_CALL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 30
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "SERV_CONN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_CONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 31
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "SERV_DISCONN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_DISCONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 32
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "SERV_END"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 34
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "ADAPTER_NOTIFY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ADAPTER_NOTIFY:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 36
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "ASYNC_TASK_PRE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_PRE:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 37
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "ASYNC_TASK_BACKGROUND"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_BACKGROUND:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 38
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "ASYNC_TASK_POST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_POST:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 39
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "ASYNC_TASK_END"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 40
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "NETWORK_OP_START"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->NETWORK_OP_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 41
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "NETWORK_OP_END"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->NETWORK_OP_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 43
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "MARK_FLAG"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 44
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "MARK_START"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 45
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "MARK_STOP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 46
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "MARK_FAIL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_FAIL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 47
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "MARK_CANCEL"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 48
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "MARK_PUSH"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_PUSH:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 49
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "MARK_POP"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_POP:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 51
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_APPLICATION_START"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 52
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_APPLICATION_END"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 54
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_ACTIVITY_START"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 55
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_ACTIVITY_END"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 57
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_SERVICE_START"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 58
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_SERVICE_END"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 60
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_BROADCAST_RECEIVER_START"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 61
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_BROADCAST_RECEIVER_END"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 63
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_CONTENT_PROVIDER_START"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_CONTENT_PROVIDER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 64
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_CONTENT_PROVIDER_END"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_CONTENT_PROVIDER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 66
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_FRAGMENT_START"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 67
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_FRAGMENT_END"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 69
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_VIEW_START"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 70
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "LIFECYCLE_VIEW_END"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 72
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "TRACE_ABORT"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ABORT:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 73
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "TRACE_END"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 74
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "TRACE_START"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 75
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "TRACE_BACKWARDS"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 77
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "COUNTER"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->COUNTER:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 79
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "TEST_CLOCK_SYNC_START"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TEST_CLOCK_SYNC_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 80
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "TEST_CLOCK_SYNC_END"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TEST_CLOCK_SYNC_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 82
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "QPL_START"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->QPL_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 83
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "QPL_END"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->QPL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 84
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "QPL_CANCEL"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->QPL_CANCEL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 86
    new-instance v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-string v1, "TRACE_ANNOTATION"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/LogEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ANNOTATION:Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 16
    const/16 v0, 0x32

    new-array v0, v0, [Lcom/facebook/loom/logger/LogEntry$EntryType;

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UNKNOWN_TYPE:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_UPDATE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_UPDATE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_CALL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_CONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_DISCONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->ADAPTER_NOTIFY:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_PRE:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_BACKGROUND:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_POST:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->NETWORK_OP_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->NETWORK_OP_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_FAIL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_PUSH:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_POP:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_CONTENT_PROVIDER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_CONTENT_PROVIDER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ABORT:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->COUNTER:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->TEST_CLOCK_SYNC_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->TEST_CLOCK_SYNC_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->QPL_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->QPL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->QPL_CANCEL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ANNOTATION:Lcom/facebook/loom/logger/LogEntry$EntryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->$VALUES:[Lcom/facebook/loom/logger/LogEntry$EntryType;

    .line 163
    invoke-static {}, Lcom/facebook/loom/logger/LogEntry$EntryType;->values()[Lcom/facebook/loom/logger/LogEntry$EntryType;

    move-result-object v0

    sput-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->VALUES:[Lcom/facebook/loom/logger/LogEntry$EntryType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isAsyncCall(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_CALL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlockEnd(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->NETWORK_OP_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_UPDATE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_CONTENT_PROVIDER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlockStart(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->NETWORK_OP_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_CONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_DISCONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_PRE:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_BACKGROUND:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_TASK_POST:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_UPDATE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_CONTENT_PROVIDER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isControlEntry(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ABORT:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ANNOTATION:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFrameworkCallEnd(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_CONTENT_PROVIDER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFrameworkCallStart(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_CONTENT_PROVIDER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/loom/logger/LogEntry$EntryType;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/logger/LogEntry$EntryType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/loom/logger/LogEntry$EntryType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->$VALUES:[Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-virtual {v0}, [Lcom/facebook/loom/logger/LogEntry$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/loom/logger/LogEntry$EntryType;

    return-object v0
.end method
