.class public Lcom/facebook/acra/ACRA;
.super Ljava/lang/Object;
.source "xzdecoder"


# static fields
.field public static final ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

.field private static final ENABLE_SSL_CERT_CHECKS_FILE_NAME:Ljava/lang/String; = "cert_checks.txt"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

.field public static final NULL_VALUE:Ljava/lang/String; = "ACRA-NULL-STRING"

.field private static final REPORT_HOST_FILE_NAME:Ljava/lang/String; = "report_host.txt"

.field private static final TAG:Ljava/lang/String; = "ACRA"

.field private static mReportSender:Lcom/facebook/acra/sender/HttpPostSender;

.field public static mReportsCrashes:Lcom/facebook/acra/reporter/BaseCrashReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const-class v0, Lcom/facebook/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 121
    const/16 v0, 0x41

    new-array v0, v0, [Lcom/facebook/acra/ReportField;

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/acra/ReportField;->APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/acra/ReportField;->PACKAGE_NAME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/acra/ReportField;->FILE_PATH:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/acra/ReportField;->PHONE_MODEL:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/acra/ReportField;->BRAND:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/acra/ReportField;->PRODUCT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/acra/ReportField;->OS_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/acra/ReportField;->BUILD:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/acra/ReportField;->BUILD_HOST:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/acra/ReportField;->CUSTOM_DATA:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/acra/ReportField;->STACK_TRACE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/facebook/acra/ReportField;->DISPLAY:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/facebook/acra/ReportField;->LOGCAT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/facebook/acra/ReportField;->EVENTSLOG:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/facebook/acra/ReportField;->RADIOLOG:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE_ID:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/facebook/acra/ReportField;->INSTALLATION_ID:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/facebook/acra/ReportField;->ENVIRONMENT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/facebook/acra/ReportField;->SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/facebook/acra/ReportField;->SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/facebook/acra/ReportField;->JAIL_BROKEN:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/facebook/acra/ReportField;->MINIDUMP:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_ID:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/facebook/acra/ReportField;->OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/facebook/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/facebook/acra/ReportField;->SIGQUIT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/facebook/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED_TIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/facebook/acra/ReportField;->TIME_OF_CRASH:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/facebook/acra/ReportField;->WEBVIEW_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED_TIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/facebook/acra/ReportField;->IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lcom/facebook/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    .line 141
    const/16 v0, 0x33

    new-array v0, v0, [Lcom/facebook/acra/ReportField;

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/acra/ReportField;->APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/acra/ReportField;->PACKAGE_NAME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/acra/ReportField;->FILE_PATH:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/acra/ReportField;->PHONE_MODEL:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/acra/ReportField;->BRAND:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/acra/ReportField;->PRODUCT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/acra/ReportField;->OS_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/acra/ReportField;->BUILD:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/acra/ReportField;->BUILD_HOST:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/acra/ReportField;->CUSTOM_DATA:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/acra/ReportField;->STACK_TRACE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/facebook/acra/ReportField;->DISPLAY:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE_ID:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/facebook/acra/ReportField;->INSTALLATION_ID:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/facebook/acra/ReportField;->ENVIRONMENT:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/facebook/acra/ReportField;->SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/facebook/acra/ReportField;->SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/facebook/acra/ReportField;->JAIL_BROKEN:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/facebook/acra/ReportField;->MINIDUMP:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_ID:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/facebook/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/facebook/acra/ReportField;->WEBVIEW_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/facebook/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeStreamNoException(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 258
    if-nez p0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    const-string v1, "ACRA"

    const-string v2, "Error while closing stream: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getConfig()Lcom/facebook/acra/reporter/BaseCrashReporter;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/BaseCrashReporter;

    return-object v0
.end method

.method public static init(Lcom/facebook/acra/reporter/BaseCrashReporter;Ljava/lang/String;Z)Lcom/facebook/acra/ErrorReporter;
    .locals 5

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/BaseCrashReporter;

    if-nez v1, :cond_1

    .line 85
    sput-object p0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/BaseCrashReporter;

    invoke-virtual {p0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACRA is enabled for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intializing..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0, v1, p2}, Lcom/facebook/acra/ErrorReporter;->init(Landroid/content/Context;Z)V

    .line 95
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-static {v1, v0, p1}, Lcom/facebook/acra/ACRA;->setReportSender(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->initCertChecks(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter;->checkReportsOnApplicationStart()Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 105
    :cond_1
    return-object v0
.end method

.method private static initCertChecks(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x1

    .line 240
    :try_start_0
    const-string v1, "cert_checks.txt"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 252
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    .line 254
    :goto_1
    sget-object v1, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/BaseCrashReporter;

    invoke-virtual {v1, v0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->checkSSLCertsOnCrashReport(Z)V

    .line 255
    return-void

    .line 249
    :catch_0
    move-exception v1

    .line 250
    :goto_2
    :try_start_2
    const-string v3, "ACRA"

    const-string v4, "could not read disable ssl cert checks file: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 249
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public static setReportHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/HttpPostSender;

    invoke-virtual {v0, p0}, Lcom/facebook/acra/sender/HttpPostSender;->setHost(Ljava/lang/String;)Z

    .line 163
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->writeReportHostFile(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private static setReportSender(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 211
    new-instance v0, Lcom/facebook/acra/sender/HttpPostSender;

    invoke-direct {v0, p2}, Lcom/facebook/acra/sender/HttpPostSender;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/HttpPostSender;

    .line 212
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/HttpPostSender;

    invoke-virtual {p1, v0}, Lcom/facebook/acra/ErrorReporter;->setReportSender(Lcom/facebook/acra/sender/HttpPostSender;)V

    .line 216
    :try_start_0
    const-string v0, "report_host.txt"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 230
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    .line 231
    :goto_0
    return-void

    .line 220
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    const-string v2, "ACRA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setting crash reporting host to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v2, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/HttpPostSender;

    invoke-virtual {v2, v0}, Lcom/facebook/acra/sender/HttpPostSender;->setHost(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    :cond_1
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 228
    :goto_1
    :try_start_3
    const-string v2, "ACRA"

    const-string v3, "could not read host file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 227
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static writeCertChecksFile(Z)V
    .locals 4

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 175
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/BaseCrashReporter;

    invoke-virtual {v0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cert_checks.txt"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    .line 185
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 182
    :goto_1
    :try_start_2
    const-string v2, "ACRA"

    const-string v3, "could not write to ssl cert checks file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 181
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static writeReportHostFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 192
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/BaseCrashReporter;

    invoke-virtual {v0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "report_host.txt"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    .line 202
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 199
    :goto_1
    :try_start_2
    const-string v2, "ACRA"

    const-string v3, "could not write to host file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 198
    :catch_1
    move-exception v0

    goto :goto_1
.end method
