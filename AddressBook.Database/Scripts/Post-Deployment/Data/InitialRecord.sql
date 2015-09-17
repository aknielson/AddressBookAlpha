if not exists (select * from [dbo].[Address] where [Id] = 1)
BEGIN
SET IDENTITY_INSERT [dbo].[Address] ON 
INSERT [dbo].[Address] ([Id], [Street1], [Street2], [City], [State], [PostalCode]) VALUES (1, N'220 NW 2nd Ave', NULL, N'Portland', N'Oregon', N'97209')
SET IDENTITY_INSERT [dbo].[Address] OFF
END

if not exists (select * from [dbo].[Person] where [Id] = 1)
BEGIN
SET IDENTITY_INSERT [dbo].[Person] ON 
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [MiddleName], [EmailAddress], [AddressId]) VALUES (1, N'Allen', N'Nielson', N'Keith', N'akn@nwnatural.com', 1)
SET IDENTITY_INSERT [dbo].[Person] OFF
END

if not exists (select * from [dbo].[PhoneType] where [Id] = 1)
BEGIN
SET IDENTITY_INSERT [dbo].[PhoneType] ON 
INSERT [dbo].[PhoneType] ([Id], [Description]) VALUES (1, N'Home')
INSERT [dbo].[PhoneType] ([Id], [Description]) VALUES (2, N'Cell')
INSERT [dbo].[PhoneType] ([Id], [Description]) VALUES (3, N'Office')
SET IDENTITY_INSERT [dbo].[PhoneType] OFF
END

if not exists (select * from [dbo].[Phone] where [Id] = 1)
BEGIN
SET IDENTITY_INSERT [dbo].[Phone] ON 
INSERT [dbo].[Phone] ([Id], [PhoneNumber], [PhoneTypeId], [PersonId]) VALUES (1, N'360-555-5555', 1, 1)
SET IDENTITY_INSERT [dbo].[Phone] OFF
END
