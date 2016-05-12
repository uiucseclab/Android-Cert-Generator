.class public abstract Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "UserInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;,
        Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;,
        Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ProfileImageUploader;
    }
.end annotation


# static fields
.field public static GET_PHOTO_RESULT_CODE:I

.field public static REQUEST_CROP:I


# instance fields
.field protected cancelButton:Landroid/widget/Button;

.field protected currentUser:Lcom/samsung/milk/milkvideo/models/User;

.field protected emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

.field protected featureFlag:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected firstNameField:Landroid/widget/EditText;

.field protected lastNameField:Landroid/widget/EditText;

.field protected localProfilePhotoManager:Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected profileImageData:Ljava/lang/String;

.field protected profilePhoto:Landroid/widget/ImageView;

.field protected profilePhotoNone:Landroid/widget/ImageView;

.field protected profilePhotoUpdated:Z

.field protected profilePhotoUploader:Lcom/squareup/picasso/Target;

.field protected profilePhotoUri:Landroid/net/Uri;

.field protected showPhotoOptionListener:Landroid/view/View$OnClickListener;

.field protected submitButton:Landroid/widget/Button;

.field protected usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

.field private validationPerformedListener:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x64

    sput v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->GET_PHOTO_RESULT_CODE:I

    .line 76
    const/16 v0, 0xc8

    sput v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->REQUEST_CROP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 218
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->showPhotoOptionListener:Landroid/view/View$OnClickListener;

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->launchGalleryIntent()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->launchCameraIntent()V

    return-void
.end method

.method private launchCameraIntent()V
    .locals 2

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    sget v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->GET_PHOTO_RESULT_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void
.end method

.method private launchGalleryIntent()V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    sget v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->GET_PHOTO_RESULT_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method


# virtual methods
.method protected addTitleViewToLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0600ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 290
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030063

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 292
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 293
    return-void
.end method

.method public getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 202
    const/4 v7, 0x0

    .line 204
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 205
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 206
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 207
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 212
    if-eqz v7, :cond_0

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v8

    .line 210
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    if-eqz v7, :cond_0

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 212
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 21
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 157
    sget v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->GET_PHOTO_RESULT_CODE:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 158
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v16, "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    const-string v2, "outputX"

    const/16 v5, 0x1a4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v2, "outputY"

    const/16 v5, 0x1a4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v2, "aspectX"

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v2, "aspectY"

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v2, "scale"

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    :try_start_0
    sget v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->REQUEST_CROP:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    return-void

    .line 167
    .restart local v16    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v15

    .line 169
    .local v15, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->setProfilePhoto(Landroid/net/Uri;)V

    goto :goto_0

    .line 171
    .end local v15    # "e":Landroid/content/ActivityNotFoundException;
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_1
    sget v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->REQUEST_CROP:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 173
    .local v3, "photoUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 174
    .local v19, "photoPath":Ljava/lang/String;
    const/16 v17, -0x1

    .line 176
    .local v17, "orientation":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 177
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "orientation"

    aput-object v5, v4, v2

    .line 178
    .local v4, "orientationColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 179
    .local v14, "cur":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rsub-int v0, v2, 0x168

    move/from16 v17, v0

    .line 182
    :cond_2
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 183
    .local v10, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 184
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    move-object v5, v12

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 185
    .local v20, "rotatedBitmap":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 187
    .local v13, "copyBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->localProfilePhotoManager:Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->saveLocalProfileBitmaps(Landroid/graphics/Bitmap;)V

    .line 189
    new-instance v18, Ljava/io/FileOutputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 190
    .local v18, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    move-object/from16 v0, v18

    invoke-virtual {v13, v2, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 191
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 192
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local v4    # "orientationColumn":[Ljava/lang/String;
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "copyBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "cur":Landroid/database/Cursor;
    .end local v18    # "out":Ljava/io/FileOutputStream;
    .end local v20    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->setProfilePhoto(Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 193
    :catch_1
    move-exception v15

    .line 194
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t update profile picture"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v15, v2, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    const v0, 0x7f03003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f080060

    const v5, 0x7f08005f

    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhoto:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoNone:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->firstNameField:Landroid/widget/EditText;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->lastNameField:Landroid/widget/EditText;

    .line 96
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->submitButton:Landroid/widget/Button;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->cancelButton:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    .line 100
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setDefaultText(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setDefaultText(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->firstNameField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->lastNameField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getIconUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUri:Landroid/net/Uri;

    .line 110
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->localProfilePhotoManager:Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->getProfilePhoto()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 111
    .local v0, "savedPhoto":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/utils/CircularTransformation;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/utils/CircularTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 113
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoNone:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .end local v0    # "savedPhoto":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ProfileImageUploader;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ProfileImageUploader;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUploader:Lcom/squareup/picasso/Target;

    .line 118
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUpdated:Z

    .line 120
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->addTitleViewToLayout()V

    .line 123
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->cancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoNone:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->showPhotoOptionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhoto:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->showPhotoOptionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    new-instance v2, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    invoke-direct {v2, v3, v4}, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;-><init>(Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/api/NachosRestService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationRule(Lcom/samsung/milk/milkvideo/validations/ValidationRule;)V

    .line 134
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    new-instance v2, Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    invoke-direct {v2, v3, v4}, Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule;-><init>(Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/api/NachosRestService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationRule(Lcom/samsung/milk/milkvideo/validations/ValidationRule;)V

    .line 136
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->validationPerformedListener:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;

    .line 138
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->validationPerformedListener:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationPerformedListener(Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;)V

    .line 139
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->validationPerformedListener:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ValidationPerformedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationPerformedListener(Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;)V

    .line 141
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->firstNameField:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->firstNameField:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->lastNameField:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->lastNameField:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 144
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/milk/milkvideo/utils/UiUtils;->makeOptionalHintTextSpan(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/milk/milkvideo/utils/UiUtils;->makeOptionalHintTextSpan(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validate()V

    .line 148
    return-void
.end method

.method public setProfilePhoto(Landroid/net/Uri;)V
    .locals 1
    .param p1, "photo"    # Landroid/net/Uri;

    .prologue
    .line 226
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->setProfilePhoto(Landroid/net/Uri;I)V

    .line 227
    return-void
.end method

.method public setProfilePhoto(Landroid/net/Uri;I)V
    .locals 6
    .param p1, "photo"    # Landroid/net/Uri;
    .param p2, "orientation"    # I

    .prologue
    const/16 v5, 0x1a4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 230
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUri:Landroid/net/Uri;

    .line 231
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/utils/CircularTransformation;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/utils/CircularTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 233
    .local v0, "load":Lcom/squareup/picasso/RequestCreator;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 234
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->rotate(F)Lcom/squareup/picasso/RequestCreator;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 237
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUploader:Lcom/squareup/picasso/Target;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 238
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoNone:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    .end local v0    # "load":Lcom/squareup/picasso/RequestCreator;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUpdated:Z

    .line 245
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoNone:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setSpinnerVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, "loadingSpinner":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    :cond_0
    return-void
.end method

.method public showPhotoOptionsDialog()V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profilePhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/high16 v0, 0x7f0c0000

    :goto_0
    const v2, 0x7f08006b

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/milk/milkvideo/utils/AlertUtils;->createOptionsAlertDialog(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 273
    return-void

    .line 248
    :cond_0
    const v0, 0x7f0c0001

    goto :goto_0
.end method
