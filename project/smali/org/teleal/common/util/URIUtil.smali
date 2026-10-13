.class public Lorg/teleal/common/util/URIUtil;
.super Ljava/lang/Object;
.source "URIUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ALPHA:Ljava/util/BitSet;

.field public static final ALPHANUM:Ljava/util/BitSet;

.field public static final DIGIT:Ljava/util/BitSet;

.field public static final FRAGMENT:Ljava/util/BitSet;

.field public static final GEN_DELIMS:Ljava/util/BitSet;

.field public static final LOW_ALPHA:Ljava/util/BitSet;

.field public static final PATH_PARAM_NAME:Ljava/util/BitSet;

.field public static final PATH_PARAM_VALUE:Ljava/util/BitSet;

.field public static final PATH_SEGMENT:Ljava/util/BitSet;

.field public static final PCHAR:Ljava/util/BitSet;

.field public static final QUERY:Ljava/util/BitSet;

.field public static final RESERVED:Ljava/util/BitSet;

.field public static final SUB_DELIMS:Ljava/util/BitSet;

.field public static final UNRESERVED:Ljava/util/BitSet;

.field public static final UP_ALPHA:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x26

    const/16 v5, 0x3f

    const/16 v4, 0x3d

    const/16 v3, 0x2f

    const/16 v2, 0x3b

    .line 34
    const-class v0, Lorg/teleal/common/util/URIUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/teleal/common/util/URIUtil;->$assertionsDisabled:Z

    .line 220
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    .line 223
    sget-object v0, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 224
    sget-object v0, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 225
    sget-object v0, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 226
    sget-object v0, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 227
    sget-object v0, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 228
    sget-object v0, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 229
    sget-object v0, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 235
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    .line 238
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 239
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 240
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 241
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 242
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 243
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 244
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 245
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 246
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 247
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 248
    sget-object v0, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 254
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->RESERVED:Ljava/util/BitSet;

    .line 257
    sget-object v0, Lorg/teleal/common/util/URIUtil;->RESERVED:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->GEN_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 258
    sget-object v0, Lorg/teleal/common/util/URIUtil;->RESERVED:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 265
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    .line 268
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 269
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 270
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 271
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 272
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 273
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 274
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 275
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 276
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 277
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 278
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 279
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 280
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 281
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 282
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 283
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 284
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 285
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 286
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 287
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 288
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 289
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 290
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 291
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 292
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 293
    sget-object v0, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 300
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    .line 303
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 304
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 305
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 306
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 307
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 308
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 309
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 310
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 311
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 312
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 313
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 314
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 315
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 316
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 317
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 318
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 319
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 320
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 321
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 322
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 323
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 324
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 325
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 326
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 327
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 328
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 334
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->ALPHA:Ljava/util/BitSet;

    .line 337
    sget-object v0, Lorg/teleal/common/util/URIUtil;->ALPHA:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->LOW_ALPHA:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 338
    sget-object v0, Lorg/teleal/common/util/URIUtil;->ALPHA:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->UP_ALPHA:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 344
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    .line 347
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 348
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 349
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 350
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 351
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 352
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 353
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 354
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 355
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 356
    sget-object v0, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 362
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->ALPHANUM:Ljava/util/BitSet;

    .line 365
    sget-object v0, Lorg/teleal/common/util/URIUtil;->ALPHANUM:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 366
    sget-object v0, Lorg/teleal/common/util/URIUtil;->ALPHANUM:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 372
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->UNRESERVED:Ljava/util/BitSet;

    .line 375
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UNRESERVED:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 376
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UNRESERVED:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->DIGIT:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 377
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 378
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 379
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 380
    sget-object v0, Lorg/teleal/common/util/URIUtil;->UNRESERVED:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 389
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    .line 392
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 393
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->SUB_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 394
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 395
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 401
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->PATH_SEGMENT:Ljava/util/BitSet;

    .line 404
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PATH_SEGMENT:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 406
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PATH_SEGMENT:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 412
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_NAME:Ljava/util/BitSet;

    .line 415
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_NAME:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 417
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_NAME:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 418
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_NAME:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    .line 424
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_VALUE:Ljava/util/BitSet;

    .line 427
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_VALUE:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 429
    sget-object v0, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_VALUE:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 435
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    .line 438
    sget-object v0, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 439
    sget-object v0, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 440
    sget-object v0, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 443
    sget-object v0, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    .line 444
    sget-object v0, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->clear(I)V

    .line 445
    sget-object v0, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 451
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/teleal/common/util/URIUtil;->FRAGMENT:Ljava/util/BitSet;

    .line 454
    sget-object v0, Lorg/teleal/common/util/URIUtil;->FRAGMENT:Ljava/util/BitSet;

    sget-object v1, Lorg/teleal/common/util/URIUtil;->PCHAR:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 455
    sget-object v0, Lorg/teleal/common/util/URIUtil;->FRAGMENT:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 456
    sget-object v0, Lorg/teleal/common/util/URIUtil;->FRAGMENT:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 457
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertRelativeURI(Ljava/lang/String;Ljava/net/URI;)V
    .locals 3
    .param p0, "what"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " URI must be relative, without scheme and authority"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method

.method public static createAbsoluteURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static createAbsoluteURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 7
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "relativeOrNot"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 49
    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Base URI is null and given URI is not absolute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    .end local p1    # "relativeOrNot":Ljava/net/URI;
    :goto_0
    return-object p1

    .line 54
    .restart local p1    # "relativeOrNot":Ljava/net/URI;
    :cond_1
    sget-boolean v1, Lorg/teleal/common/util/URIUtil;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 58
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "base":Ljava/net/URI;
    .local v0, "base":Ljava/net/URI;
    move-object p0, v0

    .line 63
    .end local v0    # "base":Ljava/net/URI;
    .restart local p0    # "base":Ljava/net/URI;
    :cond_3
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v6

    .line 60
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createAbsoluteURL(Ljava/net/InetAddress;ILjava/net/URI;)Ljava/net/URL;
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "localStreamPort"    # I
    .param p2, "relativeOrNot"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    instance-of v1, p0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p2}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 107
    :cond_0
    instance-of v1, p0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    .line 108
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p2}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InetAddress is neither IPv4 nor IPv6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Address, port, and URI can not be converted to URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createAbsoluteURL(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URL;
    .locals 3
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "relativeOrNot"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0, p1}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Absolute URI can not be converted to URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createAbsoluteURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "base"    # Ljava/net/URL;
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;
    .locals 5
    .param p0, "base"    # Ljava/net/URL;
    .param p1, "relativeOrNot"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Base URL is null and given URI is not absolute"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 86
    :goto_0
    return-object v3

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Base URL was null and given URI can\'t be converted to URL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget-boolean v3, Lorg/teleal/common/util/URIUtil;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p0, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :catch_1
    move-exception v2

    .line 88
    .restart local v2    # "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Base URL is not an URI, or can\'t create absolute URI (null?), or absolute URI can not be converted to URL"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 85
    .local v1, "baseURI":Ljava/net/URI;
    invoke-static {v1, p1}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 86
    .local v0, "absoluteURI":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0
.end method

.method public static createRelativePathURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 5
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 118
    const-string v3, "Given"

    invoke-static {v3, p0}, Lorg/teleal/common/util/URIUtil;->assertRelativeURI(Ljava/lang/String;Ljava/net/URI;)V

    .line 121
    invoke-virtual {p0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    .line 124
    .local v1, "normalizedURI":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "uriString":Ljava/lang/String;
    :goto_0
    const-string v3, "../"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "idx":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 130
    :cond_0
    :goto_1
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 133
    :cond_1
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    return-object v3
.end method

.method public static createRelativeURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "full"    # Ljava/net/URI;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static createRelativeURI(Ljava/net/URI;Ljava/net/URL;)Ljava/net/URI;
    .locals 3
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "full"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/teleal/common/util/URIUtil;->createRelativeURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t convert full URL to URI"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createRelativeURI(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URI;
    .locals 3
    .param p0, "base"    # Ljava/net/URL;
    .param p1, "full"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/teleal/common/util/URIUtil;->createRelativeURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t convert base URL to URI"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createRelativeURI(Ljava/net/URL;Ljava/net/URL;)Ljava/net/URI;
    .locals 3
    .param p0, "base"    # Ljava/net/URL;
    .param p1, "full"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/teleal/common/util/URIUtil;->createRelativeURI(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t convert base or full URL to URI"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodePart(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 17
    .param p0, "part"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "allowed"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 536
    if-nez p0, :cond_0

    .line 537
    const/4 v13, 0x0

    .line 554
    :goto_0
    return-object v13

    .line 540
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3

    invoke-direct {v6, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 541
    .local v6, "encoded":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 542
    .local v11, "toEncode":[C
    move-object v1, v11

    .local v1, "arr$":[C
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v1    # "arr$":[C
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-char v5, v1, v8

    .line 543
    .local v5, "c":C
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 544
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    .end local v8    # "i$":I
    :cond_1
    add-int/lit8 v7, v8, 0x1

    .restart local v7    # "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_1

    .line 546
    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 547
    .local v4, "bytes":[B
    move-object v2, v4

    .local v2, "arr$":[B
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v10, :cond_1

    aget-byte v3, v2, v7

    .line 549
    .local v3, "b":B
    and-int/lit16 v12, v3, 0xff

    .line 550
    .local v12, "u8":I
    const-string v13, "%%%1$02X"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 554
    .end local v2    # "arr$":[B
    .end local v3    # "b":B
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "u8":I
    .restart local v8    # "i$":I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0
.end method

.method public static encodePathParamName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pathParamName"    # Ljava/lang/String;

    .prologue
    .line 465
    :try_start_0
    const-string v1, "UTF-8"

    sget-object v2, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_NAME:Ljava/util/BitSet;

    invoke-static {p0, v1, v2}, Lorg/teleal/common/util/URIUtil;->encodePart(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 467
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodePathParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pathParamValue"    # Ljava/lang/String;

    .prologue
    .line 478
    :try_start_0
    const-string v1, "UTF-8"

    sget-object v2, Lorg/teleal/common/util/URIUtil;->PATH_PARAM_VALUE:Ljava/util/BitSet;

    invoke-static {p0, v1, v2}, Lorg/teleal/common/util/URIUtil;->encodePart(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 480
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodePathSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pathSegment"    # Ljava/lang/String;

    .prologue
    .line 522
    :try_start_0
    const-string v1, "UTF-8"

    sget-object v2, Lorg/teleal/common/util/URIUtil;->PATH_SEGMENT:Ljava/util/BitSet;

    invoke-static {p0, v1, v2}, Lorg/teleal/common/util/URIUtil;->encodePart(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 524
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodeQueryNameOrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "queryNameOrValue"    # Ljava/lang/String;

    .prologue
    .line 492
    :try_start_0
    const-string v1, "UTF-8"

    sget-object v2, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    invoke-static {p0, v1, v2}, Lorg/teleal/common/util/URIUtil;->encodePart(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 494
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodeQueryNameOrValueNoParen(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "queryNameOrValueNoParen"    # Ljava/lang/String;

    .prologue
    .line 506
    :try_start_0
    const-string v2, "UTF-8"

    sget-object v3, Lorg/teleal/common/util/URIUtil;->QUERY:Ljava/util/BitSet;

    invoke-static {p0, v2, v3}, Lorg/teleal/common/util/URIUtil;->encodePart(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "query":Ljava/lang/String;
    const-string v2, "("

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 508
    const-string v2, ")"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 510
    .end local v1    # "query":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static isAbsoluteURI(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 166
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    return v1
.end method

.method public static percentDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 203
    if-nez p0, :cond_0

    const-string v1, ""

    .line 205
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static percentEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 194
    if-nez p0, :cond_0

    const-string v1, ""

    .line 196
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toURI(Ljava/net/URL;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 185
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 187
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toURL(Ljava/net/URI;)Ljava/net/URL;
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 176
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
