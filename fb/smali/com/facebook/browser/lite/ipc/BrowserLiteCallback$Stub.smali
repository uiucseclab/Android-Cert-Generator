.class public abstract Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;
.super Landroid/os/Binder;
.source "profile_video"

# interfaces
.implements Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p0, p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 179
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->a(Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->b(Ljava/lang/String;)Z

    move-result v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :sswitch_3
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->c(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->a()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :sswitch_5
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object v0, p0

    .line 96
    invoke-virtual/range {v0 .. v11}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->a(Ljava/lang/String;JJJJJ)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :sswitch_6
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 113
    :sswitch_7
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->d(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 122
    :sswitch_8
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->e(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 131
    :sswitch_9
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->a([J)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 140
    :sswitch_a
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->a(I)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 149
    :sswitch_b
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->a(Ljava/util/Map;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 159
    :sswitch_c
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->b(Ljava/util/Map;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 169
    :sswitch_d
    const-string v0, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
