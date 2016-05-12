.class public interface abstract Lcom/samsung/milk/milkvideo/api/NachosRestService;
.super Ljava/lang/Object;
.source "NachosRestService.java"


# static fields
.field public static final DATA_CONVERTER:Lretrofit/converter/Converter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lretrofit/converter/JacksonConverter;

    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-direct {v0, v1}, Lretrofit/converter/JacksonConverter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    sput-object v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;->DATA_CONVERTER:Lretrofit/converter/Converter;

    return-void
.end method


# virtual methods
.method public abstract blockVideo(Lcom/samsung/milk/milkvideo/models/Video;Lretrofit/ResponseCallback;)V
    .param p1    # Lcom/samsung/milk/milkvideo/models/Video;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/users/blocked_videos"
    .end annotation
.end method

.method public abstract followUser(Ljava/lang/String;Lcom/samsung/milk/milkvideo/api/UserFollowRequest;Lretrofit/ResponseCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/milk/milkvideo/api/UserFollowRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/users/{id}/follows"
    .end annotation
.end method

.method public abstract followUsers(Ljava/lang/String;Lcom/samsung/milk/milkvideo/api/MultipleUserFollowRequest;Lretrofit/ResponseCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/milk/milkvideo/api/MultipleUserFollowRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/users/{id}/follows/batch_follows"
    .end annotation
.end method

.method public abstract getBrandPosts(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "brand_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/BrandPostFeed;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/brands/{brand_id}/videos"
    .end annotation
.end method

.method public abstract getBrands(Lretrofit/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/UserListResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/brands/follow_status"
    .end annotation
.end method

.method public abstract getCategories(Lretrofit/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/CategoryListResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/categories_with_featured"
    .end annotation

    .annotation runtime Lretrofit/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation
.end method

.method public abstract getEmailUnique(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "email"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/validations/unique_email"
    .end annotation
.end method

.method public abstract getFacebookFriends(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FacebookFriendsList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/users/{id}/facebook_friends"
    .end annotation
.end method

.method public abstract getFollowersList(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FollowersList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/users/{id}/followers"
    .end annotation
.end method

.method public abstract getFollowingList(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FollowingList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/users/{id}/followings"
    .end annotation
.end method

.method public abstract getGooglePlusFriends(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/GooglePlusFriendsList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/users/{id}/google_plus_friends"
    .end annotation
.end method

.method public abstract getPagedVideoFeed(Ljava/lang/String;ILjava/lang/Boolean;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "category"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit/http/Path;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit/http/Query;
            value = "force_refresh"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Boolean;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Feed;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/categories/{category}/page/{page}"
    .end annotation

    .annotation runtime Lretrofit/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation
.end method

.method public abstract getRepostUsers(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "video_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/RepostersList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/videos/{video_id}/reposts"
    .end annotation
.end method

.method public abstract getReposts(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/RepostFeed;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/users/{id}/reposts"
    .end annotation
.end method

.method public abstract getSearchResults(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "query"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/SearchResultResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/search"
    .end annotation
.end method

.method public abstract getStarred(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/StarredFeed;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/users/{id}/starred"
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "uuid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/users"
    .end annotation
.end method

.method public abstract getValidUsername(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "username"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/api/v1/validations/unique_username"
    .end annotation
.end method

.method public abstract postPlayEvent(Lcom/samsung/milk/milkvideo/api/PlayEvent;Lretrofit/ResponseCallback;)V
    .param p1    # Lcom/samsung/milk/milkvideo/api/PlayEvent;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/events"
    .end annotation
.end method

.method public abstract registerDevice(Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;Lretrofit/ResponseCallback;)V
    .param p1    # Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/me/devices"
    .end annotation
.end method

.method public abstract repostVideo(Ljava/lang/String;Lcom/samsung/milk/milkvideo/models/Repost;Lretrofit/ResponseCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/milk/milkvideo/models/Repost;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/users/{id}/reposts"
    .end annotation
.end method

.method public abstract restrictVideo(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/ResponseCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/videos/{id}/mark_as_restricted"
    .end annotation
.end method

.method public abstract signIn(Lcom/samsung/milk/milkvideo/api/AuthenticationRequest;Lretrofit/Callback;)V
    .param p1    # Lcom/samsung/milk/milkvideo/api/AuthenticationRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/milk/milkvideo/api/AuthenticationRequest;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/SessionResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/users/sign_in"
    .end annotation
.end method

.method public abstract signInWithFacebook(Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;Lretrofit/Callback;)V
    .param p1    # Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/SessionResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/facebook_sessions"
    .end annotation
.end method

.method public abstract signInWithGooglePlus(Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;Lretrofit/Callback;)V
    .param p1    # Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/SessionResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/google_plus_sessions"
    .end annotation
.end method

.method public abstract signInWithSamsungAccount(Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;Lretrofit/Callback;)V
    .param p1    # Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/SessionResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/samsung_account_sessions"
    .end annotation
.end method

.method public abstract signOut(Lretrofit/ResponseCallback;)V
    .annotation runtime Lretrofit/http/DELETE;
        value = "/api/v1/users/sign_out"
    .end annotation
.end method

.method public abstract signUpUser(Lcom/samsung/milk/milkvideo/models/User;Lretrofit/Callback;)V
    .param p1    # Lcom/samsung/milk/milkvideo/models/User;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/milk/milkvideo/models/User;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/api/SignUpResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/signups"
    .end annotation
.end method

.method public abstract starVideo(Ljava/lang/String;Lcom/samsung/milk/milkvideo/models/Video;Lretrofit/ResponseCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/milk/milkvideo/models/Video;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/api/v1/users/{id}/starred"
    .end annotation
.end method

.method public abstract unfollowUser(Ljava/lang/String;Ljava/lang/String;Lretrofit/ResponseCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "unfollow_id"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/DELETE;
        value = "/api/v1/users/{id}/follows/{unfollow_id}"
    .end annotation
.end method

.method public abstract unrepostVideo(Ljava/lang/String;Ljava/lang/String;Lretrofit/ResponseCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "embed_code"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/DELETE;
        value = "/api/v1/users/{id}/reposts/{embed_code}"
    .end annotation
.end method

.method public abstract unstarVideo(Ljava/lang/String;Ljava/lang/String;Lretrofit/ResponseCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "embed_code"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/DELETE;
        value = "/api/v1/users/{id}/starred/{embed_code}"
    .end annotation
.end method

.method public abstract updateUser(Ljava/lang/String;Lcom/samsung/milk/milkvideo/models/User;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/milk/milkvideo/models/User;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/milk/milkvideo/models/User;",
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "/api/v1/users/{id}/"
    .end annotation
.end method
